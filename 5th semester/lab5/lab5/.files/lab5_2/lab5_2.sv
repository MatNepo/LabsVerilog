module lab5_2
#(parameter N = 7)
(
	input clk,
	input [N-1:0] da, db,
	output reg [2*N-1:0] q
);

reg [2*N-1:0] rom [2**(2*N)-1:0];
reg [N-1:0] ia, jb;

initial begin
	integer i, j;
	for (i = 0; i <= (2**N-1); i += 1) 
		for (j = 0; j <= (2**N-1); j += 1) begin
			ia = i;
			jb = j;
			rom[{ia, jb}] = ia * jb;
		end
end

always @ (posedge clk) 
	q <= rom[{da, db}];

endmodule
