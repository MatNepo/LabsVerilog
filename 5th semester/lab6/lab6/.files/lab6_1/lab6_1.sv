module lab6_1
#(parameter W=20)
(
	input 	[W-1:0] a,		b,
	output 	[W-1:0] min,	max
);

task Tsort
(
	input 	[W-1:0]	a,		b,
	output	[W-1:0]	min,	max
);
	begin
		if (a < b) begin
			min = a;
			max = b;
		end 
		else begin
			min = b;
			max = a;
		end
	end
endtask

always @*
	Tsort(a, b, min, max);

endmodule
