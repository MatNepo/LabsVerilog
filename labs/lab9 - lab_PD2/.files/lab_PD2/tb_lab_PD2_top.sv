`timescale 1 ns / 1 ns
module tb_lab_PD2_top ();
	bit clk;
	bit reset ;
	bit[3:0] dout;

	always 
		#50 clk = ~ clk;
	initial
	begin
		clk 	= 1'b0;
		reset 	= 1'b0;
		#500;
		reset 	= 1'b1;
		#4000;
		$stop;
	end 

	lab_PD2_top UUT (.*);
endmodule 

 