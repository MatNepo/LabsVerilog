// Code your design here
module test2;

  task tst(input int a, output int y);
    automatic int x = 0;
    begin
      x = a + x;
      y = a;
      $display ("x=", x, " y = ", y);
    end
  endtask

  int loc;

  initial begin
    #5;
    tst(100, loc);
    #20;
    tst(500, loc);
  end

  initial begin
    #5;
    tst(50, loc);
    #20;
    tst(300, loc);
  end

endmodule
