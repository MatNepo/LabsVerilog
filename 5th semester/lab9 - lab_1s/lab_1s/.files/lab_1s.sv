module lab_1s
#(parameter DIV=12_500_000)
(
	(* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "23" *)
	input clk,
	(* altera_attribute = "-name IO_STANDARD \"2.5-V\"", chip_pin = "64" *)
	input rst_n,
	(* altera_attribute = "-name IO_STANDARD \"2.5-V\"", chip_pin = "72, 71, 70, 69, 68, 67, 66, 65" *)
	output [7:0] dout
);

reg rst_n_i;

rst_rg rst_rg (clk, rst_n, rst_n_i);

reg ena;

cnt_div #(.N(DIV)) cnt_div (clk, rst_n_i, ena);

reg [7:0] dint;

led_drv led_drv (ena, clk, rst_n_i, dint);

led_rg led_rg (dint, clk, rst_n_i, dout);

endmodule
