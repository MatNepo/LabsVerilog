module lab3_3
#(parameter w = 4)
(
  input [w-1:0] a,
  input [w-1:0] b,
  input sel,
  output reg [w-1:0] res
  
);
always @*
   case(sel)
    1: res = b;
    default res = a;
    endcase
endmodule
