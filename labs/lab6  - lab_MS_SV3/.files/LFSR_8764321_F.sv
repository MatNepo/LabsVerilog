`timescale 1ns / 1ns
module LFSR_8764321_F (
  input  bit       CLK,
  input  bit       RST,
  input  bit       ENA,
  output bit [8:1] LFSR_out
);
  always_ff @(posedge CLK, posedge RST)
    if (RST) LFSR_out <= 1'b1;
    else if (ENA)
      if (LFSR_out == '0) LFSR_out <= 1'b1;
      else LFSR_out <= {LFSR_out[7:1], LFSR_out[8] ^ LFSR_out[7] ^ LFSR_out[6] ^ LFSR_out[4] ^ LFSR_out[3] ^ LFSR_out[2] ^ LFSR_out[1]};
endmodule
