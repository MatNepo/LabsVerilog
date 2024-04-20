module MUX 
#(parameter N = 4)
(
	input [N - 1:0] Ai, Bi, Ci, Di,
	input [1:0] sel,
	output reg [N - 1:0] mo
);

always @*
	case (sel)
		2'b10: mo <= Ai;
		2'b11: mo <= Bi;
		2'b01: mo <= Ci;
		2'b00: mo <= Di;
	endcase

endmodule
