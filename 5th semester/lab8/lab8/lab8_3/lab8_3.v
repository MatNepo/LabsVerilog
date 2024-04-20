module lab8_3(
	input [2:0] da,
	input clk,
	output reg [7:0] q
);

reg [2:0] address;
reg [7:0] rom [0:7];

initial begin
	$readmemb("rom_init_values.txt", rom);
end

always @(posedge clk) begin
	address <= da;
	q <= rom[address];
end

endmodule
