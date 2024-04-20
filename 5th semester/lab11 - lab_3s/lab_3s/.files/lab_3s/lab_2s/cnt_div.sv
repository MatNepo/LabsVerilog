module cnt_div
#(parameter N = 5)
(
	input clk, rst,
	output reg ena
);

integer counter = 0;

always @(posedge clk)
	if (~rst) begin
		counter <= 0;
		ena <= 0;
	end else
		if (counter == N - 1) begin
			counter <= 0;
			ena <= 1;
		end else begin
			counter <= counter + 1;
			ena <= 0;
		end

endmodule
