module lab3_4
(
input [3:0] a,
input [3:0] b,
input sel,
output [6:0] d7seg,
output [4:1] DIG
);

wire [3:0] dmin; 
wire [3:0] dmax;
wire [6:0] d7seg_a,d7seg_b;
defparam par4.w = 7;


lab3_1 par1(a, b, dmin, dmax);
lab3_2 par2(dmin, d7seg_a);
lab3_2 par3(dmax, d7seg_b);
lab3_3 par4(d7seg_a, d7seg_b, sel, d7seg);

assign DIG[1] = sel;
assign DIG[2] = ~sel;
assign DIG[3] = 1'b0;
assign DIG[4] = 1'b0;

endmodule