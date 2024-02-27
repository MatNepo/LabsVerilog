`timescale 1ns/1ns
module sv_mist6();
  logic [7:0] a = '0, b='0;
always_comb begin
    $display ("\ntime[%0t]", $time);
    if (a ==  b)  $display ("Double  Equal for a(%b)== b(%b) is TRUE  ", a, b);
    else          $display ("Double  Equal for a(%b)== b(%b) is FALSE ", a, b);
    if (a === b)  $display ("Tripple Equal for a(%b)===b(%b) is TRUE  ", a, b);
    else          $display ("Tripple Equal for a(%b)===b(%b) is FALSE ", a, b);
end
always_comb begin
    if (a !=  b)  $display ("                  a(%b)!= b(%b) is TRUE  ", a, b);
    if (a !== b)  $display ("                  a(%b)!==b(%b) is TRUE  ", a, b);
end
initial begin//embedded test
  #1;
  a = '0; b = '1;
  #1;
  a = 8'bxx110000; b = 8'bxx110000;
  #1;
  a = 8'bxx110000; b = 8'b11110000;
  #1;    
  $stop;
end 
endmodule
