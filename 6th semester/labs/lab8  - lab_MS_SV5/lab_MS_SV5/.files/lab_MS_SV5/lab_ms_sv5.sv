`timescale 1 ns / 1 ns
module lab_ms_sv5 (
    input bit CLK,
    input bit reset,
    output bit [7:0] D_even,
    output bit [7:0] D_odd
);
    bus_MM      bus             (.*);
    master      UUT_master      (.*);
    slave_EVEN  UUT_slave_EVEN  (.*);
    slave_ODD   UUT_slave_ODD   (.*);
endmodule
