`timescale 1 ns / 100 ps
module lab6_3_tb();
localparam CLK_PERIOD = 20;
reg [1:0] a, b, c, d;
reg clk, rst;
wire [1:0] min_1, midl_1, midh_1, max_1;
wire [1:0] min_2, midl_2, midh_2, max_2;

lab6_3 #(.TYPE("lab6_1")) uut_lab_6_3_1 (a, b, c, d, clk, rst, min_1, midl_1, midh_1, max_1);
lab6_3 #(.TYPE("lab6_2")) uut_lab_6_3_2 (a, b, c, d, clk, rst, min_2, midl_2, midh_2, max_2);

initial begin
	clk = 1'b0;
	forever #(CLK_PERIOD / 2) clk = !clk;
end

localparam COUNT_TESTS = 100;
reg [1:0] A [0:4 * COUNT_TESTS - 1];
integer answers_file, char;
reg [1:0] min_ans, midl_ans, midh_ans, max_ans;

initial begin
	rst = 1'b1;
	// read tests
	$readmemb("data_in.txt", A);
	answers_file = $fopen("data_out.txt", "r");
	`define eof 32'hffff_ffff
	char = $fgetc(answers_file);
	for (int i = 0; i < COUNT_TESTS && char != `eof; i++) begin
		$ungetc(char, answers_file);
		$fscanf(answers_file, "%b", min_ans);
		$fscanf(answers_file, "%b", midl_ans);
		$fscanf(answers_file, "%b", midh_ans);
		$fscanf(answers_file, "%b", max_ans);
		a = A[i * 4];
		b = A[i * 4 + 1];
		c = A[i * 4 + 2];
		d = A[i * 4 + 3];
		#(CLK_PERIOD * 2);
		if (min_ans != min_1 || midl_ans != midl_1 || midh_ans != midh_1 || max_ans != max_1) begin
			$display("Error test lab6_3_1; id: %0d. \nExcepted:\t\t%b, %b, %b, %b\nReal:\t\t%b, %b, %b, %b", i,
					min_ans, midl_ans, midh_ans, max_ans,
					min_1, midl_1, midh_1, max_1);
			$stop;
		end
		if (min_ans != min_2 || midl_ans != midl_2 || midh_ans != midh_2 || max_ans != max_2) begin
			$display("Error test lab6_3_2; id: %0d. \nExcepted: %b, %b, %b, %b\nReal: %b, %b, %b, %b", i,
					min_ans, midl_ans, midh_ans, max_ans,
					min_2, midl_2, midh_2, max_2);
			$stop;
		end
		char = $fgetc(answers_file);
	end
	$display("All test have been passed!");
	$fclose(answers_file);
	$stop;
end

endmodule
