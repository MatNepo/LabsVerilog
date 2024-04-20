`timescale 1ns/1ns
module sv_mist2_1();//Example test2_1 from lecture
  byte x,y, y_S, y_A;
always_comb begin
  static byte cnt_S = 8'd1;
  $write ("Static    \ttime[%0t]   \tx=%0d \tcnt_S=%0d", $time, x,  cnt_S);
  cnt_S += x;
  y_S = cnt_S;
  $display ("\ty_S=%0d", y_S); 
end
always_comb begin
  automatic byte cnt_A = 8'd1;
  $write ("Automatic \ttime[%0t]   \ty=%0d \tcnt_A=%0d", $time, y,  cnt_A); 
  cnt_A += y;
  y_A = cnt_A;
  $display ("\ty_A=%0d", y_A); 
end
//embedded test
initial begin
#0 $display ("");

  #1 y=8'd1;
  #0 x=8'd1;
#0 $display ("");

  #1 y=8'd2;
  #0 x=8'd2;
#0 $display ("");

  #1 y=8'd3;
  #0 x=8'd3;
#0 $display ("");

  #1 $stop;
end
endmodule
