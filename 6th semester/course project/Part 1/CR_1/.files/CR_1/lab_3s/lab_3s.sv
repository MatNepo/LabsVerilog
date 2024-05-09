//`include "lab_2s/ss_cntr.sv"
//`include "b2bd_ROM.sv"
module lab_3s (
  (* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "23" *)
  input clk,
  (* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "88, 89, 90, 91, 49, 46, 25, 24" *)
  input  [7:0] bc,
  (* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "84, 76, 85, 77, 86, 133, 87" *)
  output [6:0] ss,
  (* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "73, 80, 74, 83" *)
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
