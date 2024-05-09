`timescale 1ns / 1ns
module tb_gen;

  parameter PERIOD = 10;

  bit       clk = 1'b0;
  bit       ENgen = 1'b0;
  bit       ENwrk = 1'b0;
  bit       full = 1'b0;
  bit       wrreq;
  bit [7:0] data;

  initial begin
    forever #(PERIOD / 2) clk = ~clk;
  end

  gen u_gen (.*);

  initial begin
    #(PERIOD * 1);
    ENgen = 1'b1;
    #(PERIOD * 1);
    ENwrk = 1'b1;
    #(PERIOD * 10);
    full = 1'b1;
    #(PERIOD * 2);
    full = 1'b0;
    #(PERIOD * 4);
    $stop;
  end

endmodule
