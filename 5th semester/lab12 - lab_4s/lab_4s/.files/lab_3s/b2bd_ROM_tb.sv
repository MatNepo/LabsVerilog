`timescale 1ns / 1ns
`include "b2bd_LOGt.sv"
`include "b2bd_ROM.sv"
`include "b2bd_SR.sv"
module tb_b2bd_ROM ();
  parameter PERIOD = 10;
  reg [7:0] bc = 1'b0;
  reg       clk = 1'b0;
  wire [11:0] bdc_LOGt, bdc_ROM, bdc_SR;

  initial begin
    forever #(PERIOD / 2) clk = ~clk;
  end

  b2bd_LOGt b2bd_LOGt (
    .bc (bc[7:0]),
    .clk(clk),
    .bdc(bdc_LOGt[11:0])
  );

  b2bd_SR b2bd_SR (
    .bc (bc[7:0]),
    .clk(clk),
    .bdc(bdc_SR[11:0])
  );

  b2bd_ROM u_b2bd_ROM (
    .bc (bc[7:0]),
    .clk(clk),
    .bdc(bdc_ROM[11:0])
  );

  reg [8:0] i;

  initial begin
    for (i = 9'd0; i < 9'd256; i += 1'd1) begin
      bc <= i;
      #(PERIOD * 12);
      if (bdc_LOGt != bdc_SR || bdc_SR != bdc_ROM || bdc_ROM != bdc_LOGt) begin
        $display("Incorrect output:\nbdc_LOGt: %b\nbdc_SR: %b\nbdc_ROM: %b", bdc_LOGt, bdc_SR,
                 bdc_ROM);
        $stop;
      end
    end
    $display("All test have been passed!");
    $stop;
  end

endmodule
