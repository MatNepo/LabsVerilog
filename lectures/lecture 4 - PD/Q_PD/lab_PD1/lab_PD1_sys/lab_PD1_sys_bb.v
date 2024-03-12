
module lab_PD1_sys (
	alu0_out_data,
	alu0_out_ready,
	alu0_out_valid,
	alu1_out_data,
	alu1_out_ready,
	alu1_out_valid,
	clk_clk,
	delay_out_valid,
	delay_out_data,
	reset_reset_n);	

	output	[31:0]	alu0_out_data;
	input		alu0_out_ready;
	output		alu0_out_valid;
	output	[31:0]	alu1_out_data;
	input		alu1_out_ready;
	output		alu1_out_valid;
	input		clk_clk;
	output		delay_out_valid;
	output	[31:0]	delay_out_data;
	input		reset_reset_n;
endmodule
