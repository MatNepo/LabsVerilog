`timescale 1ns/1ns
module sv_mist4();
  typedef enum byte {red=8'd8, blue=8'd16, green=8'd32} colorT;
  colorT state = blue;
initial //embedded test
  begin
    $display("state              = %0d ", state);
    $display("state using name   = ",     state.name);
    $display("state using string = %s  ", state);
    #10 $stop;
  end
endmodule
