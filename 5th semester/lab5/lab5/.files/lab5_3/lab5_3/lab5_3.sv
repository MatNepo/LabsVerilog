module lab5_3
(
	input clk,
	input [7:0] sw,
	output [7:0] q
);

wire [7:0] cout;

lab5_2 #(.N(3'd4)) lab5_2 (.clk(clk), .da(sw[3:0]), .db(sw[7:4]), .q(cout));

assign q = ~cout;

endmodule