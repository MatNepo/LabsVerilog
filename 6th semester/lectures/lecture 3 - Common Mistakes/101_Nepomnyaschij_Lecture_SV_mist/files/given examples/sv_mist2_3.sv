`timescale 1ns/1ns

module sv_mist2_3();//Example test2 from lecture
task s_tst(input int x, output int y_S);
  static int cnt_S = 0;
  $write ("static    \tx = %0d", x, "\tcnt_S = %0d", cnt_S);
  cnt_S += x;
  y_S    = cnt_S;
  $display ("\ty_S = %0d", y_S);
endtask : s_tst

task a_tst(input int x, output int y_A);
  automatic int cnt_A = 0;
  $write ("automatic \tx = %0d", x, "\tcnt_A = %0d", cnt_A);  
  cnt_A += x;
  y_A    = cnt_A;
  $display ("\ty_A = %0d", y_A);
endtask : a_tst
//embedded test
  int loc;
initial
  begin
    #1;
    $display ("time [%0t]", $time); 
    s_tst (1, loc);
    a_tst (1, loc);
    #1;
    $display ("time [%0t]", $time); 
    s_tst (1, loc);
    a_tst (1, loc);
    #1;
    $display ("time [%0t]", $time); 
    s_tst (1, loc);
    a_tst (1, loc);
    #1;
    $display ("time [%0t]", $time); 
    s_tst (1, loc);
    a_tst (1, loc);
    #1 $stop;
end
endmodule

