module led_rg
(
	input [7:0] dint,
	input clk, rst,
	output reg [7:0] dout
);

always @(posedge clk) 
	if (~rst)
		dout <= 0;
	else
		dout <= dint;


endmodule
