module db_lab_PD3_top (
    (* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "23" *)
    input bit clk
);
    bit reset;
    bit [7:0]  ledA;
    bit [31:0] ledB;
SP_unit u0 (
	.source (reset),
	.source_clk (clk)
    );
lab_PD3_top Lab3_top_inst (.*);
endmodule
