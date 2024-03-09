`timescale 1ns / 1ns
module histogram_unit #(
  parameter MAX_NUMBER = ((1 << 7) - 1),
  parameter SIZE       = 7
) (
  input  bit                            CLK,
  input  bit [$clog2(MAX_NUMBER) - 1:0] d_in,
  input  bit                            RST,
  input  bit                            ENA,
  output bit [              SIZE - 1:0] mem_out
);

  bit [SIZE - 1:0] mem_in;
  bit [$clog2(MAX_NUMBER) - 1:0] adr_in, adr_clear;

  bit [$clog2(MAX_NUMBER) - 1:0] d_in_temp;

  bit                            clk_50;
  bit [SIZE - 1:0] mem_out_2;

  RAM RAM_inst (
    .address(adr_in),
    .data   (mem_in),
    .clock  (!clk_50),
    .wren   (ENA),
    .q      (mem_out_2)
  );

  always_ff @(posedge CLK) d_in_temp <= d_in;
  always_ff @(negedge CLK) mem_out <= mem_out_2;
  
  PLL PLL_inst (
    .inclk0(CLK),
    .c0    (clk_50)
  );

  assign mem_in = RST ? '0 : (ENA ? mem_out_2 + !CLK : mem_out_2);
  assign adr_in = RST ? adr_clear : d_in_temp;

  always_ff @(negedge clk_50) begin : clearing_array
    if (~RST) adr_clear <= '0;
    else adr_clear <= adr_clear + 1'b1;
  end

endmodule
