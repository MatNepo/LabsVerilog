`timescale 1ns/1ns
module sv_mist2_2();
  byte y_S, y_A;
  bit CLK;
always_ff @(posedge CLK) begin
  static byte cnt_S = '0;
  cnt_S += 8'd1;
  y_S    = cnt_S;
end
always_ff @(posedge CLK) begin
  automatic byte cnt_A = '0;
  cnt_A += 8'd1;
  y_A    = cnt_A;
end
//This is an embedded test
always  
  #1 CLK = ~CLK;
always   @(posedge CLK) begin
  byte cnt_t;
  cnt_t += 8'd1;
  $display ("CLK posedge number[%0d]", cnt_t);
  #0 $display ("\ty_A=%0d", y_A);
  #0 $display ("\ty_S=%0d", y_S);
  #0 $display (""); 
end 
initial begin
  repeat (7) @(negedge CLK);
  $stop;
end
//
endmodule
