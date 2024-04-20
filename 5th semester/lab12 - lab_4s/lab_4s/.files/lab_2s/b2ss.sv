module b2ss 
(
	input [3:0] a,
	output reg [6:0] d7seg
);

reg [6:0] ss_arr[15:0];

initial begin
	ss_arr[0] = 7'h3F; //0
	ss_arr[1] = 7'h06; //1
	ss_arr[2] = 7'h5B; //2
	ss_arr[3] = 7'h4F; //3
	ss_arr[4] = 7'h66; //4
	ss_arr[5] = 7'h6D; //5
	ss_arr[6] = 7'h7D; //6
	ss_arr[7] = 7'h07; //7
	ss_arr[8] = 7'h7F; //8
	ss_arr[9] = 7'h6F; //9
	ss_arr[10] = 7'h77; //A
	ss_arr[11] = 7'h7C; //B
	ss_arr[12] = 7'h39; //C
	ss_arr[13] = 7'h5E; //D
	ss_arr[14] = 7'h79; //E
	ss_arr[15] = 7'h71; //F 
end

assign d7seg = ss_arr[a];

endmodule
