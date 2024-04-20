
module lab_PD4 (
	clk_clk,
	reset_reset_n,
	data_d_export,
	d_slave_export,
	dd_slave_export,
	def_slave_export);	

	input		clk_clk;
	input		reset_reset_n;
	input	[7:0]	data_d_export;
	output	[7:0]	d_slave_export;
	output	[7:0]	dd_slave_export;
	output	[7:0]	def_slave_export;
endmodule
