module d_rg 
(
	input [3:0] A, B, C, D,
	input clk, rst_ni,
	output reg [3:0] Ai, Bi, Ci, Di
);

always @(posedge clk) begin
	if (~rst_ni)
		{Ai, Bi, Ci, Di} <= 1'b0;
	else
		{Ai, Bi, Ci, Di} <= {A, B, C, D};
end

endmodule
