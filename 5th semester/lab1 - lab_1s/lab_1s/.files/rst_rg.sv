module rst_rg
(
	input clk, rst_n,
	output reg rst_n_i
);

reg rst_temp;

always @(posedge clk) begin
	rst_temp <= rst_n;
	rst_n_i <= rst_temp;
end

endmodule
