module lab3_2(
    input [3:0] a,
    output reg [6:0] d7seg
);

reg [6:0] segment_codes [0:15];

initial begin
    segment_codes[0] = 7'b0111111; // 0
    segment_codes[1] = 7'b0000110; // 1
    segment_codes[2] = 7'b1011011; // 2
    segment_codes[3] = 7'b1001111; // 3
    segment_codes[4] = 7'b1100110; // 4
    segment_codes[5] = 7'b1101101; // 5
    segment_codes[6] = 7'b1111101; // 6
    segment_codes[7] = 7'b0000111; // 7
    segment_codes[8] = 7'b1111111; // 8
    segment_codes[9] = 7'b1101111; // 9
	 segment_codes[10] = 7'b1110111; // A
	 segment_codes[11] = 7'b1111100; // B
	 segment_codes[12] = 7'b0111001; // C
	 segment_codes[13] = 7'b1011110; // d
	 segment_codes[14] = 7'b1111001; // E
	 segment_codes[15] = 7'b1110001; // F
end

always @(a)
	  d7seg = segment_codes[a];

endmodule