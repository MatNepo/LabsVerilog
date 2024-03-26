module db_lab_PD2_top (
	(* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "23" *)
	input bit clk
);
	bit reset;
	bit [3:0] dout;
SP_unit u0 (
	.source (reset),
	.source_clk (clk)
	);
lab_PD2_top UUT (.*);
endmodule
