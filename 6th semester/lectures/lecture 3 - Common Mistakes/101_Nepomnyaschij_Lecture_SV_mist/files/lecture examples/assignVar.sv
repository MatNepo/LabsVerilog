// Code your design here
module assignVar;

  int globV;
  int otherV;

  task aVar(input int val, output int outV);
    begin
      globV = val;
      #10;
      outV = val;
      #10;
    end
  endtask

  initial begin
    aVar(37, otherV);
    #50;
    aVar(73, otherV);
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #200 $finish;
  end

endmodule : assignVar
