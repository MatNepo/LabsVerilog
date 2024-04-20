`define CLOCK_PERIOD 100
`define CLK_DELAY 2
module lab5_1_tb();


reg [3:0] d;
reg srst;
reg [7:0] result;
reg clk;

lab5_1 DUT (clk, srst, d, result);

initial begin
	clk <= 0;
end

task run_all_commands;
	input reg [3:0] except1, except2;
	for (integer i = 0; i < 16; i = i + 1) begin
		#(`CLOCK_PERIOD) if ((i !== except1) && (i !== except2)) d = i;
	end
endtask

always #(`CLOCK_PERIOD/2) clk = ~clk;

initial begin
	d = 4'b0101; srst = 1;
	#(`CLOCK_PERIOD * `CLK_DELAY)	d = 4'b0001; srst = 1;

	#(`CLOCK_PERIOD * `CLK_DELAY)	d = 4'b0101; srst = 1;
	#(`CLOCK_PERIOD * `CLK_DELAY)	d = 4'b0010; srst = 1;

	#(`CLOCK_PERIOD * `CLK_DELAY)	d = 4'b0101; srst = 1;
	#(`CLOCK_PERIOD * `CLK_DELAY)	d = 4'b0100; srst = 1;
   #(`CLOCK_PERIOD * `CLK_DELAY)	d = 4'b0101; srst = 1;
	#(`CLOCK_PERIOD * `CLK_DELAY)	d = 4'b0010; srst = 1;
	
	#(`CLOCK_PERIOD * `CLK_DELAY)	d = 4'b0101; srst = 1;
	#(`CLOCK_PERIOD * `CLK_DELAY)	d = 4'b1000; srst = 1;
	#(`CLOCK_PERIOD * `CLK_DELAY)	d = 4'b0101; srst = 1;
	#(`CLOCK_PERIOD * `CLK_DELAY)	d = 4'b0101; srst = 0;
	#(`CLOCK_PERIOD * `CLK_DELAY)	d = 4'b0101; srst = 1;

	#(`CLOCK_PERIOD * `CLK_DELAY)	srst = 1; run_all_commands(4'b0001, 4'b0001);
	#(`CLOCK_PERIOD * `CLK_DELAY)	srst = 0; d = 0;
	#(`CLOCK_PERIOD * `CLK_DELAY)	srst = 1; d = 4'b0001; run_all_commands(4'b0010, 4'b0010);
	#(`CLOCK_PERIOD * `CLK_DELAY)	srst = 0; d = 0;
	#(`CLOCK_PERIOD * `CLK_DELAY)	srst = 1; d = 4'b0001; #(`CLOCK_PERIOD) d = 4'b0010; run_all_commands(4'b0100, 4'b1000);
	#(`CLOCK_PERIOD * `CLK_DELAY)	srst = 0; d = 0;
	#(`CLOCK_PERIOD * `CLK_DELAY)	$stop;
end


endmodule 