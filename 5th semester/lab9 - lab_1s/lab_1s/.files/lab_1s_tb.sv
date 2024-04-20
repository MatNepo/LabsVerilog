module lab_1s_tb ();
localparam CLK_PERIOD = 20;
reg clk, rst;
reg [7:0] dout;

lab_1s #(.DIV(5)) lab_1s (clk, rst, dout);

initial begin
	clk = 1'b0;
	forever #(CLK_PERIOD / 2) clk = !clk;
end

initial begin
	rst = 1'b1;
	#(CLK_PERIOD * 40 * 5)
	rst = 1'b0;
	#(CLK_PERIOD * 5 * 5)
	$stop;
end

endmodule
