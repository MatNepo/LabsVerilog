`timescale 1ns / 1ns
`include "mult_LP_V1.sv"
module mult_LP_V1_tb;

  parameter PERIOD = 10;
  parameter W = 8;

  reg            clk = 0;
  reg  [  W-1:0] dA       [0:W+1];
  reg  [  W-1:0] dB       [0:W+1];
  wire [2*W-1:0] a_mult_b;

  initial begin
    forever #(PERIOD / 2) clk = ~clk;
  end

  mult_LP_V1 #(
    .W(W)
  ) u_mult_LP_V1 (
    .clk(clk),
    .dA (dA[0][W-1:0]),
    .dB (dB[0][W-1:0]),

    .a_mult_b(a_mult_b[2*W-1:0])
  );

  initial begin
    for (int i = 0; i < $pow(2, W); i++)
    for (int j = 0; j < $pow(2, W); j++) begin
      for (int k = W + 1; k > 0; k--) begin
        dA[k] = dA[k-1];
        dB[k] = dB[k-1];
      end
      dA[0] = i;
      dB[0] = j;
      #(PERIOD);
      if (dA[W+1] * dB[W+1] != a_mult_b) begin
        $display("Incorrect result: %0d * %0d = %0d\nExpected: %0d", dA[W+1], dB[W+1], a_mult_b,
                 dA[W+1] * dB[W+1]);
        $stop;
      end
    end
    for (int i = 0; i <= W; i++) begin
      for (int k = W + 1; k > 0; k--) begin
        dA[k] = dA[k-1];
        dB[k] = dB[k-1];
      end
      dA[0] = 0;
      dB[0] = 0;
      #(PERIOD);
      if (dA[W+1] * dB[W+1] != a_mult_b) begin
        $display("Incorrect result: %0d * %0d = %0d\nExpected: %0d", dA[W+1], dB[W+1], a_mult_b,
                 dA[W+1] * dB[W+1]);
        $stop;
      end
    end
    $display("All tests passed!");
    $stop;
  end

endmodule
