`timescale 1ns / 1ns
module tb_LFSR_8764321_F ();
  bit       CLK;
  bit       RST;
  bit       ENA;
  bit [8:1] LFSR_out;
  bit LFSR_CYCLE;

  LFSR_8764321_F LFSR_8764321_F_inst (.*);

  localparam CLK_PERIOD = 20; 

  initial forever #(CLK_PERIOD / 2) CLK = ~CLK;

  bit [8:1] CNT_int = '0;

  bit [8:1] LFSR_out_start = '0;

  initial begin
    RST = '1;
    #(CLK_PERIOD * 3 / 4);
    RST = '0;
    #(CLK_PERIOD * 5 / 4);
    ENA = '1;
    forever begin
      @(negedge CLK);
      if (CNT_int == '0) LFSR_out_start = LFSR_out;
      else
			if (LFSR_out_start == LFSR_out) begin
				LFSR_CYCLE = '1;
				break;
			end
			CNT_int ++;
	 end
    #(CLK_PERIOD * 5);
    $stop;
  end

endmodule
