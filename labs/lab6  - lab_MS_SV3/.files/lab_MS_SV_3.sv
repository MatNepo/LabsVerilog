`timescale 1ns / 1ns
module lab_MS_SV_3 (
  input  bit       CLK,
  input  bit       RST,
  input  bit       ENA,
  output bit [7:0] mem_out
);

  bit [7:0] LFSR_out;
  bit [7:0] d_in;

  LFSR_8764321_F LFSR_8764321_F_inst (
    .CLK,
    .RST,
    .ENA,
    .LFSR_out
  );
  
  assign d_in = LFSR_out;

  histogram_unit histogram_unit_inst (
    .CLK,
    .d_in,
    .RST,
    .ENA,
    .mem_out
  );

endmodule
