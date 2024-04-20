module ss_cntr
#(parameter divider = 5)
(
	input [3:0] A, B, C, D,
	input clk, rst_n,
	output reg [6:0] ss,
	output reg [4:1] dig
);

reg rst_ni;

rst_rg rst_rg (clk, rst_n, rst_ni);

reg ENA;
reg [3:0] Ai, Bi, Ci, Di;

cnt_div #(.N(divider)) cnt_div (clk, rst_ni, ENA);
d_rg d_rg (A, B, C, D, clk, rst_ni, Ai, Bi, Ci, Di);

reg [1:0] sel;
reg [4:1] digi;

FSM FSM (rst_ni, clk, ENA, digi, sel);

reg [3:0] mo;

MUX MUX2 (Ai, Bi, Ci, Di, sel, mo);

reg [6:0] ssi;

b2ss b2ss (mo, ssi);
ss_rg ss_rg (ssi, clk, rst_ni, ss);
dig_rg dig_rg (digi, clk, rst_ni, dig);

endmodule
