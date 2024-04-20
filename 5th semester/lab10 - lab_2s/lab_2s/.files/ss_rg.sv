module ss_rg 
(
	input [6:0] ssi,
	input clk,
	input rst_ni,
	output reg [6:0] ss
);

always @(posedge clk) begin
	if (~rst_ni)
		ss <= 1'b0;
	else
		ss <= ssi;
end

endmodule
