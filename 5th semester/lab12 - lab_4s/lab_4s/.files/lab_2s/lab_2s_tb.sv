module lab_2s_tb ();

reg clk, rst_n;
reg [6:0] ss;
reg [4:1] dig;

lab_2s #(5) lab2_s (clk, rst_n, ss, dig);
localparam CLK_PERIOD = 20;

initial begin
	clk = 1'b0;
	forever #(CLK_PERIOD / 2) clk <= ~clk;
end

initial begin
	rst_n = 1'b1;
	#(CLK_PERIOD * 50)
	rst_n = 1'b0;
	#(CLK_PERIOD * 10)
	rst_n = 1'b1;
	#(CLK_PERIOD * 10)
	$stop;
end

endmodule
