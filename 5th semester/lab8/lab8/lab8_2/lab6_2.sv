module lab6_2
#(parameter W=20)
(
	input 	[W-1:0] a, b,
	output 	reg [W-1:0] min, max
);

function 	[W-1:0]	Fmin
(
	input 	[W-1:0]	a, b
);
	Fmin = a < b ? a : b;
endfunction

function 	[W-1:0]	Fmax
(
	input 	[W-1:0]	a, b
);
	Fmax = a < b ? b : a;
endfunction

always @*
begin
	min = Fmin(a, b);
	max = Fmax(a, b);
end

endmodule
