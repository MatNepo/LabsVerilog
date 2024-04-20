module b2bd_LOGt (
  input      [ 7:0] bc,
  input             clk,
  output reg [11:0] bdc
);

  reg [3:0] temp_a, temp_b, temp_c, temp_dl, temp_el, temp_dh, temp_eh;
  reg [7:0] rg_bc;

  task b2bd(input [3:0] bc, output reg [3:0] bd);
    bd = bc < 4'b0101 ? bc : (bc + 4'b0011);
  endtask

  initial rg_bc = 8'b0;

  always @(posedge clk) rg_bc <= bc;

  always @* begin
    b2bd({1'b0, bc[7:5]}, temp_a);
    b2bd({temp_a[2:0], bc[4]}, temp_b);
    b2bd({temp_b[2:0], bc[3]}, temp_c);
    b2bd({temp_c[2:0], bc[2]}, temp_dl);
    b2bd({1'b0, temp_a[3], temp_b[3], temp_c[3]}, temp_dh);
    b2bd({temp_dl[2:0], bc[1]}, temp_el);
    b2bd({temp_dh[2:0], temp_dl[3]}, temp_eh);
  end

  always @(posedge clk) begin
    bdc <= {temp_dh[3], temp_eh, temp_el, rg_bc[0]};
  end

endmodule
