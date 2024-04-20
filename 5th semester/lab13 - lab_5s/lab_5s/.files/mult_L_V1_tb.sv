`timescale 1ns / 1ns
module mult_L_V1_tb;

  parameter PERIOD = 10;
  parameter W = 8;

  reg            clk = 0;
  reg  [  W-1:0] dA = 0;
  reg  [  W-1:0] dB = 0;
  wire [2*W-1:0] a_mult_b;

  initial begin
    forever #(PERIOD / 2) clk = ~clk;
  end

  mult_L_V1 #(
    .W(W)
  ) u_mult_L_V1 (
    .clk(clk),
    .dA (dA[W-1:0]),
    .dB (dB[W-1:0]),

    .a_mult_b(a_mult_b[2*W-1:0])
  );

  initial begin
    for (int i = 0; i < $pow(2, W); i++)
    for (int j = 0; j < $pow(2, W); j++) begin
      dA <= i;
      dB <= j;
      #(PERIOD * 2);
      if (i * j != a_mult_b) begin
        $display("Incorrect result: %0d * %0d = %0d\nExpected: %0d", i, j, a_mult_b, i * j);
        $stop;
      end
    end
    $display("All tests passed!");
    $stop;
  end

endmodule
