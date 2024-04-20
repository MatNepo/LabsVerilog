`timescale 1ns / 1ns
`include "lab_4s.sv"
module lab_4s_tb;
  parameter PERIOD = 20;
  parameter divider = 50;

  reg        clk = 1'b0;
  reg  [3:0] dA = 1'b0;
  reg  [3:0] dB = 1'b0;

  wire [6:0] ss;
  wire [4:1] dig;


  initial begin
    forever #(PERIOD / 2) clk = ~clk;
  end

  lab_4s #(
    .divider(divider)
  ) lab_4s (
    .clk(clk),
    .dA (dA[3:0]),
    .dB (dB[3:0]),

    .ss (ss[6:0]),
    .dig(dig[4:1])
  );

  initial begin
    #(PERIOD * 3);
    @(negedge clk);
    dA = 4'd4;
    dB = 4'd15;
    #(PERIOD * divider * 6);
    @(negedge clk);
    dA = 4'd4;
    dB = 4'd1;
    #(PERIOD * divider * 6);
    $stop;
  end

endmodule
