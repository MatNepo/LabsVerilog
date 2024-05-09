module CR_1 (
  input  bit       CLK,
  input  bit       ENgen,
  input  bit       Enwrk,
  input  bit       RST,
  input  bit       ENraf,
  output bit [3:0] usedw,
  output bit [6:0] ss,
  output bit [4:1] dig
);

  bit       full;
  bit       wrreq;
  bit [7:0] data;

  gen u_gen (
    .clk  (CLK),
    .ENgen,
    .ENwrk(Enwrk),
    .full,
    .wrreq,
    .data
  );

  bit       rdreq;
  bit       empty;
  bit [7:0] q;

  FIFO u_fifo (
    .clock(CLK),
    .data(data),
    .rdreq(rdreq),
    .wrreq(wrreq),
    .empty(empty),
    .full(full),
    .q(q),
    .usedw(usedw)
  );

  bit [7:0] bc;

  RaF u_RaF (
    .CLK,
    .ENraf,
    .empty,
    .Enwrk,
    .RST,
    .q,
    .rdreq,
    .bc
  );

  lab_3s u_lab_3s (
    .clk(CLK),
    .bc(bc),
    .ss(ss),
    .dig(dig)
  );


endmodule
