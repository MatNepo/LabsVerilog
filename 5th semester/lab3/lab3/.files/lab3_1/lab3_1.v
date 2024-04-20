module lab3_1 #(parameter w = 4)
( 
input [w-1:0] a, b,	
output reg [w-1:0] dmin, dmax
);

always @ *

if (a>b)
	begin
		dmin <= b;
		dmax <= a;
	end
	
else
	begin
		dmin <= a;
		dmax <= b;
	end
endmodule
