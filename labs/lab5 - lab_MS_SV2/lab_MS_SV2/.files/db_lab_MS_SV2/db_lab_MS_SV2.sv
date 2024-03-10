module db_lab_MS_SV2 (
  (* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "23" *)
  input CLK
);

  bit       front_door = 0;
  bit       rear_door = 0;
  bit       window = 0;
  bit       reset = 0;
  bit       ENA = 0;
  bit [3:0] keypad = 0;
  bit       alarm_siren;
  bit       is_armed;
  bit       is_wait_delay;

  lab_MS_SV2 u_lab_MS_SV2 (
    .*,
    .clk(CLK)
  );

  SP_unit u_SP_unit (
    .source    ({front_door, rear_door, window, reset, ENA, keypad}),
    .source_clk(CLK)
  );

endmodule
