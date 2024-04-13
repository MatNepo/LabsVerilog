
module Lab1_task2_nios (
	clk_clk,
	led_export,
	reset_reset_n,
	sw_export);	

	input		clk_clk;
	output	[7:0]	led_export;
	input		reset_reset_n;
	input	[7:0]	sw_export;
endmodule
