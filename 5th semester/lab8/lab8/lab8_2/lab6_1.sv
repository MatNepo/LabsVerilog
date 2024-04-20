module lab6_1
#(parameter W=20)
(
	input 	[W-1:0] a, b,
	output 	reg [W-1:0] min, max
);

task Tsort
(
	input 	[W-1:0]	a, b,
	output	[W-1:0]	min, max
);
	begin
		min = a < b ? a : b;
		max = a > b ? a : b;
	end
endtask

always @*
	Tsort(a, b, min, max);

endmodule
