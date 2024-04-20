module led_drv_tb ();
localparam CLK_PERIOD = 20;
reg ena, clk, rst;
reg [7:0] dint;

led_drv led_drv (ena, clk, rst, dint);

initial begin
	clk = 1'b0;
	forever #(CLK_PERIOD / 2) clk = !clk;
end

reg [7:0] excepted_result;
integer input_file, answers_file, char_1, char_2;

initial begin
	`define eof 32'hffff_ffff
	input_file = $fopen("input_file.txt", "r");
	answers_file = $fopen("except_output.txt", "r");
	char_1 = $fgetc(input_file);
	char_2 = $fgetc(answers_file);
	while (char_1 != `eof && char_2 != `eof) begin
		$ungetc(char_1, input_file);
		$ungetc(char_2, answers_file);
		$fscanf(input_file, "%b", {ena, rst});
		$fscanf(answers_file, "%b", excepted_result);
		
		#(CLK_PERIOD / 2)
		if (excepted_result != dint) begin
			$display("Incorrect output:\nExcepted: %b\nActual: %b", excepted_result, dint);
			$stop;
		end
		#(CLK_PERIOD / 2)
		char_1 = $fgetc(input_file);
		char_2 = $fgetc(answers_file);		
	end
	$display("All tests passed correct!");
	$fclose(input_file);
	$fclose(answers_file);
	$stop;
end

endmodule
