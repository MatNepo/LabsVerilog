module lab_2s 
#(parameter divider = 5)
(
	(* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "23" *)
	input clk,
	(* altera_attribute = "-name IO_STANDARD \"2.5-V\"", chip_pin = "64" *)
	input rst_n,
	(* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "84, 76, 85, 77, 86, 133, 87" *)
	output reg [6:0] ss,
	(* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "73, 80, 74, 83" *)
	output reg [4:1] dig
);

ss_cntr #(divider) ss_cntr (4'hF, 4'h7, 4'h3, 4'h0, clk, rst_n, ss, dig);

endmodule
