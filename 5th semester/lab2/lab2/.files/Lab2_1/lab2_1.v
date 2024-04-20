module lab2_1#(WIDTH = 2, type = "maxsel") (
input [WIDTH-1:0] a,
input [WIDTH-1:0] b,
input [WIDTH-1:0] c,
input [WIDTH-1:0] d,
output [WIDTH-1:0] res
);

wire [WIDTH-1:0] temp1;
wire [WIDTH-1:0] temp2;

assign temp1 = (type == "maxsel") ? ((a>b) ? a : b) : ((a<b) ? a : b);
assign temp2 = (type == "maxsel") ? ((c>d) ? c : d) : ((c<d) ? c : d);


assign res = (type == "maxsel") ? ((temp1 > temp2) ? temp1 : temp2) : ((temp1 < temp2) ? temp1 : temp2);


endmodule