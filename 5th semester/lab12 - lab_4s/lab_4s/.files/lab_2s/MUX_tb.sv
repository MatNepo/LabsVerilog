module MUX_tb ();
localparam N = 4;
reg [N - 1:0] Ai, Bi, Ci, Di;
reg [1:0] sel;
reg [N - 1:0] mo;

MUX #(.N(N)) MUX2 (Ai, Bi, Ci, Di, sel, mo);

reg [N - 1:0] excepted_result;
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
		$fscanf(input_file, "%b", Ai);
		$fscanf(input_file, "%b", Bi);
		$fscanf(input_file, "%b", Ci);
		$fscanf(input_file, "%b", Di);
		$fscanf(input_file, "%b", sel);
		$fscanf(answers_file, "%b", excepted_result);
		
		#1
		if (excepted_result != mo) begin
			$display("Incorrect output:\nExcepted: %b\nActual: %b", excepted_result, mo);
			$stop;
		end
		#1
		char_1 = $fgetc(input_file);
		char_2 = $fgetc(answers_file);		
	end
	$display("All test have been passed!");
	$fclose(input_file);
	$fclose(answers_file);
	$stop;
end

endmodule
