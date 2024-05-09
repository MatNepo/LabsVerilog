module gen (
  input  bit       clk,
  input  bit       ENgen,
  input  bit       ENwrk,
  input  bit       full,
  output bit       wrreq,
  output bit [7:0] data
);

  bit       RST = 1'b0;
  bit       ENA = 1'b0;
  bit [7:1] LFSR_out = 1'b0;

  LFSR_7_6_3_1_0_F u_LFSR_7_6_3_1_0_F (
    .CLK(clk),
    .RST,
    .ENA,
    .LFSR_out
  );

  assign data = {1'b0, LFSR_out};

  always_ff @(posedge clk) begin
    if (ENgen == 1'b1 && full == 0 && ENwrk == 1) begin
      wrreq <= 1'b1;
      ENA   <= 1'b1;
    end else begin
      wrreq <= 1'b0;
      ENA   <= 1'b0;
    end
  end
endmodule
