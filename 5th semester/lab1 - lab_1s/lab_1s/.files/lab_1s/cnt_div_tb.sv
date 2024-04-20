module cnt_div_tb ();
localparam CLK_PERIOD = 20;
localparam N = 5;

reg clk, rst, ena;

cnt_div #(.N(N)) cnt_div (clk, rst, ena);

initial begin
	clk = 1'b0;
	forever #(CLK_PERIOD / 2) clk = !clk;
end

initial begin
	rst = 1'b1;
	# (CLK_PERIOD * N * 5) // 5 times get ena
	rst = 1'b0;
	# (CLK_PERIOD * N * 2) // 5 times rst
	rst = 1'b1;
	# (CLK_PERIOD * N) // 1 times get ena
	$stop;
end

endmodule
