`timescale 1ns/1ns

module sv_mist1();  

  // Declare signals a and b
  logic a;
  logic b;

  // Combinational logic using wire
  wire w = a & b;

  // Combinational logic using reg
  reg r = a & b;

  // SystemVerilog logic type, behaves like reg
  logic y = a & b;

  // SystemVerilog logic type with assign statement, behaves like wire
  logic z;          
  assign z = a & b;

  // Embedded test scenario
  initial begin
    a = '0;
    b = '0;
    // Toggle signal 'a' every 5 time units
    #5 a = !a;
    // Toggle signal 'b' every 10 time units
    #10 b = !b;
  end

  initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, sv_mist1);
        #100;
        $finish;
    end

endmodule
