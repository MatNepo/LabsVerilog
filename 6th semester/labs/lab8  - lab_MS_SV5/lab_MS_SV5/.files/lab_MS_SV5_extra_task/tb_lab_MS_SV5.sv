`timescale 1 ns / 1 ns
module tb_lab_MS_SV5 ();
    bit CLK;
    bit reset = '1;
    bit [7:0] D_even;
    bit [7:0] D_odd;
lab_ms_sv5 UUT (.*);
initial
    forever #5 CLK = ~CLK;
initial begin
    #7;
    reset = '0;
    repeat (32) @(negedge CLK);
    $stop;
end
endmodule
