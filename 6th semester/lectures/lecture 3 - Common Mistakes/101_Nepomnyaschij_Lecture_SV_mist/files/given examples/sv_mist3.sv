`timescale 1ns/1ns
module sv_mist3();
  int top_task_in;
  int top_task_out;
task tst(input int task_in, output int task_out);
  top_task_in = task_in;
  task_out    = task_in;
  #1;
endtask: tst
initial //embedded test
  begin
$monitor("time[%0t], \ttop_task_in=%0d, \ttop_task_out=%0d",$time, top_task_in, top_task_out);
    #1;
    tst (.task_in(1), .task_out(top_task_out));
    #1;
    tst (.task_in(2), .task_out(top_task_out));
    #1 $stop;
  end
endmodule
