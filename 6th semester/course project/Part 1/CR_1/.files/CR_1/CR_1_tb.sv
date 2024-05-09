`timescale 1ns / 1ns
module tb_CR_1;

  parameter PERIOD = 10;

  bit       CLK = 1'b0;
  bit       ENgen = 1'b0;
  bit       Enwrk = 1'b0;
  bit       RST = 1'b0;
  bit       ENraf = 1'b0;
  bit [3:0] usedw;
  bit [6:0] ss;
  bit [4:1] dig;

  initial begin
    forever #(PERIOD / 2) CLK = ~CLK;
  end

  CR_1 u_CR_1 (.*);

  initial begin
    #(PERIOD * 1);
    ENraf = 1'b0;
    ENgen = 1'b1;
    Enwrk = 1'b1;
    RST = 1'b0;
    #(PERIOD * 18);
    ENraf = 1'b1;
    ENgen = 1'b0;
    Enwrk = 1'b1;
    RST = 1'b0;
    #(PERIOD * 18);
    ENraf = 1'b1;
    ENgen = 1'b1;
    Enwrk = 1'b1;
    RST = 1'b0;
    #(PERIOD * 27);
    $stop;
  end

endmodule
