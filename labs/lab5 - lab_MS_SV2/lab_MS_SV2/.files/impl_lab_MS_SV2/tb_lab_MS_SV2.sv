`timescale 1ns / 1ns
module tb_lab_MS_SV2;
  parameter PERIOD = 10;
  bit       front_door = 0;
  bit       rear_door = 0;
  bit       window = 0;
  bit       clk = 0;
  bit       reset = 0;
  bit       ENA = 0;
  bit [3:0] keypad = 0;
  bit       alarm_siren;
  bit       is_armed;
  bit       is_wait_delay;

  initial forever #(PERIOD / 2) clk = ~clk;

  lab_MS_SV2 u_lab_MS_SV2 (.*);

  task iterate_keypad(input int avoid_value);
    for (int i = 0; i < 16; i++) begin
      if (i == avoid_value) continue;
      keypad <= i;
      #(PERIOD);
    end
  endtask

  initial begin
    ENA   = 1;
    reset = 0;
    #PERIOD;
    // state disarmed
    iterate_keypad(4'b0011);
    keypad <= 4'b0011;
    // state armed
    iterate_keypad(4'b1100);
    // to disarmed
    keypad <= 4'b1100;
    #PERIOD;
    // to armed
    keypad <= 4'b0011;
    #PERIOD;
    // to wait_delay
    front_door <= 1'b1;
    #PERIOD;
    iterate_keypad(4'b1100);
    // to disarmed
    front_door <= 1'b0;
    keypad     <= 4'b1100;
    #PERIOD;
    // to armed
    keypad <= 4'b0011;
    #PERIOD;
    // to wait_delay
    rear_door <= 1'b1;
    #PERIOD;
    // to alarm
    rear_door <= 1'b0;
    #(100 * PERIOD);
    iterate_keypad(4'b1100);
    // to disarmed
    keypad <= 4'b1100;
    // to armed
    keypad <= 4'b0011;
    #PERIOD;
    // to wait_delay
    window <= 1'b1;
    #PERIOD;
    // reset to disarmed
    reset <= 1'b1;
    #PERIOD;
    reset  <= 1'b0;
    // to armed
    keypad <= 4'b0011;
    #PERIOD;
    // to wait_delay
    front_door <= 1'b1;
    rear_door  <= 1'b1;
    window     <= 1'b1;
    #PERIOD;
    $stop;
  end

endmodule
