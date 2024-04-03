`timescale 1ns/1ns
module db_lab_PD4_top (
    (* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "23" *)
    input bit clk
);
    bit reset;
    bit [7:0]  data_d;
    bit [7:0] dd_slave;
    bit [7:0] d_slave;
    bit [7:0] def_slave;
SP_unit SP_unit_inst (
	.source ( {reset, data_d} ),
	.source_clk (clk)
    );
lab_PD4_top lab_PD4_top_inst (.*);
endmodule
