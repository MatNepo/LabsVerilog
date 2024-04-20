module mult_L_V1 #(
  parameter W = 8
) (
  input                clk,
  input      [  W-1:0] dA,
  input      [  W-1:0] dB,
  output reg [2*W-1:0] a_mult_b
);

  reg [2*W-1:0] dSUM[0:W];
  reg [W-1:0] A, B;

  initial begin
    for (int i = 0; i <= W; i++) dSUM[i] <= 1'b0;
    A        <= 1'b0;
    B        <= 1'b0;
    a_mult_b <= 1'b0;
  end

  always @(posedge clk) begin
    A <= dA;
    B <= dB;
  end

  genvar i;
  generate
    for (i = 0; i < W; i++) begin : generator
      always @* dSUM[i+1] = (dSUM[i] << 1'b1) + (B[W-i-1] ? A : 1'b0);
    end
  endgenerate

  always @(posedge clk) a_mult_b <= dSUM[W];

endmodule

