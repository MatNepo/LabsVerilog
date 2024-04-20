module led_drv
(
	input ena, clk, rst,
	output reg [7:0] dint
);

reg [7:0] mem [0:31];

initial $readmemb("mem.txt", mem);

integer i = 0;

always @(posedge clk)
	if (ena)
		if (~rst) i <= 0;
		else i <= i < 31 ? i + 1 : 0;

always @i
	dint <= mem[i];

endmodule
