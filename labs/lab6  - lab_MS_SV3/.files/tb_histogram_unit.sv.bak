`timescale 1ns / 1ns
module tb_histogram_unit ();
  parameter SIZE = 7;
  parameter MAX_NUMBER = 127;
  bit [$clog2(MAX_NUMBER) - 1:0] d_in;
  bit                            CLK;
  bit                            ENA;
  bit                            RST;
  bit [              SIZE - 1:0] mem_out;

  localparam CLK_PERIOD = 20;

  initial forever #(CLK_PERIOD / 2) CLK = ~CLK;

  histogram_unit #(
    .SIZE      (SIZE),
    .MAX_NUMBER(MAX_NUMBER)
  ) histogram_unit_inst (
    .*
  );

  initial begin
    ENA = '0;
	 #(CLK_PERIOD * 10);
    ENA = '1;
	 #(CLK_PERIOD);
    for (int i = 0; i < (MAX_NUMBER + 1) * 8; i++) begin
      @(negedge CLK) d_in += 11;
    end
	 @(negedge CLK) 
	 d_in += 1;
	 #(CLK_PERIOD * 3 / 2);
    RST = '1;
    @(negedge CLK)
	 @(negedge CLK)
    $stop;
  end

endmodule
