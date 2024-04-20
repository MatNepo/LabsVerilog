module lab5_1
(
input clk, srst_in,
input [3:0] din,
output reg [7:0] q
);

reg temp_srst, srst;
reg [3:0] temp_din, d;

always @ (posedge clk)
begin
temp_din <= din;
d <= temp_din;
end

always @ (posedge clk)
begin
temp_srst <= srst_in;
srst <= temp_srst;
end

reg [1:0] state;
parameter s0 = 0, s1 = 1, s2 = 2;

always @ (posedge clk or negedge srst)
begin 
if (!srst) state <= s0;

else
case (state)
s0:
if (d == 4'h1) state <= s1;
s1:
if (d == 4'h2) state <= s2;
s2:
if (d == 4'h4) state <= s1;
else if (d == 4'h8) state <= s0;

default state <= s0;
endcase
end

always @ (state)
case (state)
s0: q = 8'h00;
s1: q = 8'h55;
s2: q = 8'hff;
endcase

endmodule
