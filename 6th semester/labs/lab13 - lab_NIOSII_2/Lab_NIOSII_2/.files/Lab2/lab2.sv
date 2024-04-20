module lab2 (
	input bit clk,
	input bit [7:0] sw,
	input bit pbb,
	output bit [7:0] led
);

Lab2_nios u0 (
	.clk_clk(clk),
	.reset_reset_n(pbb),
	.led_export(led),
	.sw_export(sw)
);

endmodule
