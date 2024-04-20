`timescale 1ns / 1ns
module LFSR_7_6_3_1_0_F (
  input  bit       CLK,
  input  bit       RST,
  input  bit       ENA,
  output bit [7:1] LFSR_out
);
  always_ff @(posedge CLK, posedge RST)
    if (RST) LFSR_out <= 1'b1;
    else if (ENA)
      if (LFSR_out == '0) LFSR_out <= 1'b1;
      else LFSR_out <= {LFSR_out[6:1], LFSR_out[7] ^ LFSR_out[6] ^ LFSR_out[3] ^ LFSR_out[1]};
endmodule
