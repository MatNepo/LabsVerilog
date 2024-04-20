module lab4_2
#(parameter cm = 4'd10)
(
	input clk, arst, ena, load, dir,
	input [6:0] din,
	output reg [6:0] q
);

always @ (posedge clk, negedge arst)
	if (arst == 0) q <= 0;
	else if (ena)
		casex ({dir, load})
			2'bx0 : q <= ((din <= cm - 1)	? din		: cm - 1);
			2'b11 : q <= ((q == cm - 1)	? 1'b0	: q + 1'b1);
			2'b01 : q <= ((q == 1'b0)		? cm - 1	: q - 1'b1);
		endcase
			
endmodule
