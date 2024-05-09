module dig_rg 
(
	input [4:1] digi,
	input clk,
	input rst_ni,
	output reg [4:1] dig
);

always @(posedge clk) begin
	if (~rst_ni)
		dig <= 1'b0;
	else
		dig <= digi;
end

endmodule
