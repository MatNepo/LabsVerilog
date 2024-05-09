module RaF (
  input  bit       CLK,
  input  bit       ENraf,
  input  bit       empty,
  input  bit       Enwrk,
  input  bit       RST,
  input  bit [7:0] q,
  output bit       rdreq,
  output bit [7:0] bc
);

  always_ff @(posedge CLK, posedge RST) begin
    if (RST) bc <= 1'b0;
    else if (ENraf == 1'b1 && empty == 1'b0 && Enwrk == 1'b1) begin
      rdreq <= 1'b1;
      bc    <= (bc < q ? q : bc);
    end else begin
      rdreq <= 1'b0;
    end
  end


endmodule
