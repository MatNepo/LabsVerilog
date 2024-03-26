`timescale 1 ns / 1 ns
module lab_PD2_top (
	input bit clk,
	input bit reset,
	output bit [3:0] dout
);
lab_PD2 UUT (
	.clk_clk       (clk),   
	.reset_reset_n (reset), 
	.dout_export   (dout)   
);
endmodule

