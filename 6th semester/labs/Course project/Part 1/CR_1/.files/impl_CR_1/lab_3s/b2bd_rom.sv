module b2bd_ROM (
  input      [ 7:0] bc,
  input             clk,
  output reg [11:0] bdc
);
  reg [11:0] bd_ROM[255:0];
  reg [ 1:0] hdr;
  reg [ 3:0] dec;
  reg [ 3:0] unt;
  reg [ 8:0] adr;
  reg [ 7:0] rg_bc;

  initial rg_bc = 8'b0;

  initial begin
    adr = 9'b0;
    for (hdr = 2'd0; hdr <= 2'd2; hdr += 2'd1)
    for (dec = 4'd0; dec <= 4'd9; dec += 4'd1)
    for (unt = 4'd0; unt <= 4'd9; unt += 4'd1)
    if (adr < 9'd256) begin
      bd_ROM[adr[7:0]] = {2'b0, hdr, dec, unt};
      adr              = adr + 9'd1;
    end
  end

  always @(posedge clk) rg_bc <= bc;
  always @(posedge clk) bdc <= bd_ROM[rg_bc];

endmodule
