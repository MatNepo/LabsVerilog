`timescale 1ns / 1ns
module lab_MS_SV2 (
  input  bit       front_door,
  input  bit       rear_door,
  input  bit       window,
  input  bit       clk,
  input  bit       reset,
  input  bit       ENA,
  input  bit [3:0] keypad,
  output bit       alarm_siren,
  output bit       is_armed,
  output bit       is_wait_delay
);
  parameter delay_val = 100;

  bit start_count, count_done;
  bit [6:0] delay_cntr = 0;

  enum bit [1:0] { disarmed, armed, wait_delay, alarm } curr_state, next_state;
  bit [2:0] sensors;
  assign sensors = {front_door, rear_door, window};

  always_ff @(posedge clk) begin : go_to_next_state
    if (ENA)
      if (reset) curr_state = disarmed;
      else curr_state <= next_state;
  end

  always_comb begin : get_next_state
    case (curr_state)
      disarmed:
				if (keypad == 4'b0011) next_state = armed;
				else next_state = curr_state;
      armed:
				if (sensors != 3'b000) next_state = wait_delay;
				else if (keypad == 4'b1100) next_state = disarmed;
				else next_state = curr_state;
      wait_delay:
				if (count_done == 1'b1) next_state = alarm;
				else if (keypad == 4'b1100) next_state = disarmed;
				else next_state = curr_state;
      alarm:
				if (keypad == 4'b1100) next_state = disarmed;
				else next_state = curr_state;
    endcase
  end

  always_ff @(posedge clk) begin : set_output
    if (ENA)
      if (reset) {is_armed, is_wait_delay, alarm_siren} <= 1'b0;
      else begin
        is_armed      <= (curr_state == armed);
        is_wait_delay <= (curr_state == wait_delay);
        alarm_siren   <= (curr_state == alarm);
      end
  end

  assign start_count = ((curr_state == armed) && (sensors != 3'b000));

  always_ff @(posedge clk) begin : counter_alarm
    if (ENA)
      if (reset) delay_cntr <= 0;
      else if (start_count) delay_cntr <= delay_val - 1'b1;
      else if (curr_state != wait_delay) delay_cntr <= 1'b0;
      else if (delay_cntr != 0) delay_cntr <= delay_cntr - 1'b1;
  end

  assign count_done = (delay_cntr == 0);
endmodule
