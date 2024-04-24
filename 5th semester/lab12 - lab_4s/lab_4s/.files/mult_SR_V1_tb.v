`timescale 1ns / 1ns
`include "mult_SR_V1.sv"
module mult_SR_V1_tb ();

  parameter PERIOD = 10;
  parameter W = 4;

  reg                clk = 0;
  reg  [    W - 1:0] dA = 0;
  reg  [    W - 1:0] dB = 0;
  wire [2 * W - 1:0] a_mult_b;
  wire               ready;

  initial begin
    forever #(PERIOD / 2) clk = ~clk;
  end

  mult_SR_V1 #(
    .W(W)
  ) u_mult_SR_V1 (
    .clk     (clk),
    .dA      (dA[W-1:0]),
    .dB      (dB[W-1:0]),
    .a_mult_b(a_mult_b[2*W-1:0]),
    .ready   (ready)
  );

  initial begin
    for (int i = 1'd1; i < 5'd16; i += 1)
    for (int j = 1'b0; j < 5'd16; j += 1) begin
      dA <= i;
      dB <= j;
      #(PERIOD * 4);
      wait (ready);
      if (a_mult_b != i * j) begin
        $display("Incorrect result: %0d * %0d != %0d\nCorrect answer: %0d", i, j, a_mult_b, i * j);
        $stop;
      end
    end
    $display("All tests have been passed");
    $stop;
  end

endmodule
