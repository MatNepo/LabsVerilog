import lab_MS_SV4_pack::*;

module db_lab_MS_SV4(
    (* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "23" *)
    input CLK
);
    INST_t INST;
    data_y ALU_out;

lab_MS_SV4 UUT (.ALU_out, .INST);

    sp_unit SP_ (
        .source     (INST), // sources.source
        .probe      (ALU_out), // probes.probe
        .source_clk (CLK) // source_clk.clk
    );
endmodule
