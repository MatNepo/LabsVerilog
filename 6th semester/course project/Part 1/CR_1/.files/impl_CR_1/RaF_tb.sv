`timescale 1ns / 1ns
module tb_RaF;

  parameter PERIOD = 10;

  bit       CLK = 1'b0;
  bit       ENraf = 1'b0;
  bit       empty = 1'b0;
  bit       Enwrk = 1'b0;
  bit       RST = 1'b0;
  bit [7:0] q;
  bit       rdreq;
  bit [7:0] bc;

  initial begin
    forever #(PERIOD / 2) CLK = ~CLK;
  end

  RaF u_RaF (.*);

  initial begin
    #(PERIOD * 1);
    q = 8'd7;
    #(PERIOD * 1);
    ENraf = 1'b1;
    #(PERIOD * 1);
    Enwrk = 1'b1;
    #(PERIOD * 2);
    q = 8'd4;
    #(PERIOD * 2);
    RST = 1'b1;
    #(PERIOD * 1);
    RST = 1'b0;
    #(PERIOD * 1);
    q = 8'd120;
    #(PERIOD * 2);
    $stop;
  end

endmodule
