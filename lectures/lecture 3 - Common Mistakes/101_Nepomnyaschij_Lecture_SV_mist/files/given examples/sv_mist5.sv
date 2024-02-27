`timescale 1ns/1ns

module sv_mist5();//Example mystruct from lecture
struct packed {
  logic     a;
  shortint  b;
} s;

//embedded test
initial
  begin
    #5;
    s =  {1'b1, 16'd0};
    $display("s = %p ", s);
    #5;
    s =  {1'b1, 1'b1};
    $display("s = %p ", s);
    #5;
    s = '{1'b1, 1'b1};
    $display("s = %p ", s);
    #5;
    s =  {a:1'b1, b:1'b1};
    $display("s = %p ", s);
    #5;
    s = '{a:1'b1, b:1'b1};
    $display("s = %p ", s);
    #5;
  end
initial
#40 $stop;
//


endmodule

