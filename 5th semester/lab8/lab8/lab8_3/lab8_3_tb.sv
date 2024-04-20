module lab8_3_tb;

reg [2:0] da;
reg clk;
wire [7:0] q;

lab8_3 dut(.da(da), .clk(clk), .q(q));

initial begin 
	clk = 1'b0;
	forever #5 clk = !clk;
end 

initial begin 
	#5;
	da = 0;
	#100;
	da = 1;
	#100 
	da = 2;
	#100;
	da = 3;
	#100;
	da = 4;
	#100;
	da = 5;
	#100;
	da = 6;
	#100;
	da = 7;
	#100;
	$stop;
end 
endmodule