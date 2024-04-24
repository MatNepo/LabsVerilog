module lab_4s #(
  parameter divider = 100000
) (
  (* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "23" *)
  input        clk,
  (* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "49, 46, 25, 24" *)
  input  [3:0] dA,
  (* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "88, 89, 90, 91" *)
  input  [3:0] dB,
  (* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "84, 76, 85, 77, 86, 133, 87" *)
  output [6:0] ss,
  (* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "73, 80, 74, 83" *)
  output [4:1] dig
);

  wire [11:0] bdc;
  wire [ 7:0] a_mult_b;
  wire        ready;

  ss_cntr #(divider) UUT_ss_cntr (
    .clk  (clk),
    .rst_n(ready),
    .A    (4'b0),
    .B    (bdc[11:8]),
    .C    (bdc[7:4]),
    .D    (bdc[3:0]),
    .ss   (ss),
    .dig  (dig)
  );

  b2bd_ROM UUT_b2bd_SR (
    .clk(clk),
    .bdc(bdc),
    .bc (a_mult_b)
  );

  mult_SR_V1 #(4) UUT_mult_SR_V0 (
    .clk     (clk),
    .dA      (dA),
    .dB      (dB),
    .a_mult_b(a_mult_b),
    .ready   (ready)
  );

endmodule
