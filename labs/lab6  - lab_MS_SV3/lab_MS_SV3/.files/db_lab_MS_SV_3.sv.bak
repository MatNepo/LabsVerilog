module db_lab_MS_SV_3 (
  (* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "23" *)
  input bit CLK
);

  bit       RST = 1'b1;
  bit       ENA = 1'b1;
  bit [6:0] mem_out;

  lab_MS_SV_3 lab_MS_SV_3_ints (.*);
  SP_unit SP_unit_inst (
    .source    ({RST, ENA}),
    .source_clk(CLK)
  );
endmodule
