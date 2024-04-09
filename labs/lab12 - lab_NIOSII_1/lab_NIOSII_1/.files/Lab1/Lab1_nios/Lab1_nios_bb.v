
module Lab1_nios (
	clk_clk,
	reset_reset_n,
	led_export,
	sw_export);	

	input		clk_clk;
	input		reset_reset_n;
	output	[7:0]	led_export;
	input		sw_export;
endmodule
