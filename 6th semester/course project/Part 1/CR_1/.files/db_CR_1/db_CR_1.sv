module db_CR_1 (
  (* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "23" *)
  input bit CLK
);
  bit       ENgen;
  bit       Enwrk;
  bit       RST;
  bit       ENraf;
  bit [3:0] usedw;
  bit [6:0] ss;
  bit [4:1] dig;

  CR_1 u_CR_1 (
    .CLK,
    .ENgen,
    .Enwrk,
    .RST,
    .ENraf,
    .usedw,
    .ss,
    .dig
  );

  SP_unit u0 (
    .source    ({ENgen, Enwrk, RST, ENraf}),  // sources.source
    .source_clk(CLK)                          // source_clk.clk
  );

endmodule
