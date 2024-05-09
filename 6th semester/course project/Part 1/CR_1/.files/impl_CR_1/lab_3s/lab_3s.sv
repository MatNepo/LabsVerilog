//`include "lab_2s/ss_cntr.sv"
//`include "b2bd_ROM.sv"
module lab_3s (
  input clk,
  input  [7:0] bc,
  output [6:0] ss,
  output [4:1] dig
);

  wire [11:0] bdc;
  ss_cntr #(10000) UUT0 (
    .clk  (clk),
    .rst_n(1'b1),
    .A    (4'd0),
    .B    (bdc[11:8]),
    .C    (bdc[7:4]),
    .D    (bdc[3:0]),
    .ss   (ss),
    .dig  (dig)
  );

  b2bd_ROM UUT_ROM (
    .clk(clk),
    .bdc(bdc),
    .bc (bc)
  );

endmodule
