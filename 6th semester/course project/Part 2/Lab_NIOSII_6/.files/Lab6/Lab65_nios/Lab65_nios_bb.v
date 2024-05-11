
module Lab65_nios (
	clk_clk,
	led_export,
	reset_reset_n,
	dataa_export,
	datab_export);	

	input		clk_clk;
	output	[7:0]	led_export;
	input		reset_reset_n;
	input	[3:0]	dataa_export;
	input	[3:0]	datab_export;
endmodule
