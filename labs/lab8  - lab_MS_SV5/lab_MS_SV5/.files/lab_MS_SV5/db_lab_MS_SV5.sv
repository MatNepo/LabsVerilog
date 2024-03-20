`timescale 1 ns / 1 ns
module db_lab_MS_SV5 (
    (* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "23" *)
    // "23 for miniDilab-CIV"
    input bit CLK
);
    bit reset;
    bit [7:0] D_even;
    bit [7:0] D_odd;
lab_ms_sv5 UUT (.*);
SP_unit SP_1 (
    .source     (reset), // sources.source
    .source_clk (CLK)
);
endmodule
