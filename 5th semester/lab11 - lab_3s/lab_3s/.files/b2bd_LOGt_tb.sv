`timescale 1ns / 1ns
`include "b2bd_LOGt.sv"
module b2bd_LOGt_tb ();
  parameter PERIOD = 10;
  reg  [ 7:0] bc = 1'b0;
  reg         clk = 1'b0;
  wire [11:0] bdc;

  initial begin
    forever #(PERIOD / 2) clk = ~clk;
  end

  b2bd_LOGt b2bd_LOGt (
    .bc (bc[7:0]),
    .clk(clk),
    .bdc(bdc[11:0])
  );

  reg [11:0] excepted_result;
  integer input_file, answers_file, char_1, char_2;

  initial begin
    `define eof 32'hffff_ffff
    input_file   = $fopen("input_file.txt", "r");
    answers_file = $fopen("output_file.txt", "r");
    char_1       = $fgetc(input_file);
    char_2       = $fgetc(answers_file);
    while (char_1 != `eof && char_2 != `eof) begin
      $ungetc(char_1, input_file);
      $ungetc(char_2, answers_file);
      $fscanf(input_file, "%b", bc);
      $fscanf(answers_file, "%b", excepted_result);

      #(PERIOD * 2);
      if (excepted_result != bdc) begin
        $display("Incorrect output:\nExcepted: %b\nActual: %b", excepted_result, bdc);
        $stop;
      end
      char_1 = $fgetc(input_file);
      char_2 = $fgetc(answers_file);
    end
    $display("All test have been passed!");
    $fclose(input_file);
    $fclose(answers_file);
    $stop;
  end

endmodule
