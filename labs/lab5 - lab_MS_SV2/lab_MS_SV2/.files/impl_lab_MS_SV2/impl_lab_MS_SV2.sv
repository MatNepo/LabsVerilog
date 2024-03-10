`timescale 1ns / 1ns
module impl_lab_MS_SV2 (
  (* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "24" *)
  input bit front_door_in,
  (* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "25" *)
  input bit rear_door_in,
  (* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "46" *)
  input bit window_in,
  (* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "23" *)
  input bit clk, 
  (* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "49" *)
  input bit reset_in,
  (* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "88, 89, 90, 91" *)
  input bit [3:0] keypad_in, 
  (* altera_attribute = "-name IO_STANDARD \"2.5-V\"", chip_pin = "72" *)
  output bit alarm_siren, 
  (* altera_attribute = "-name IO_STANDARD \"2.5-V\"", chip_pin = "71" *)
  output bit is_armed, 
  (* altera_attribute = "-name IO_STANDARD \"2.5-V\"", chip_pin = "70" *)
  output bit is_wait_delay
);

  // triggers
  bit [2:0] sensors[1:0];
  bit       reset  [1:0];
  bit [3:0] keypad [1:0];

  always_ff @(posedge clk) begin
    sensors <= '{sensors[0], {front_door_in, rear_door_in, window_in}};
    keypad  <= '{keypad[0], keypad_in};
    reset   <= '{reset[0], reset_in};
  end

  // counter divider
  int i = 0;
  localparam divider = 2_500_000;

  always_ff @(posedge clk) begin
    if (i == divider) i <= 1'b0;
    else i <= i + 1'b1;
  end

  assign ENA = (i == divider);

  // module
  lab_MS_SV2 u_lab_MS_SV2 (
    .*,
    .front_door(sensors[1][2]),
    .rear_door (sensors[1][1]),
    .window    (sensors[1][0]),
    .reset     (reset[1]),
    .ENA       (ENA),
    .keypad    (keypad[1])
  );

endmodule
