module b2bd_SR (
  input  [ 7:0] bc,
  input         clk,
  output [11:0] bdc
);

  reg [7:0] shrg_bc;
  reg [7:0] rg_bc_new, rg_bc_old;
  reg [3:0] rg_hdr;
  reg [3:0] rg_dec, F_dec;
  reg [3:0] rg_unt, F_unt;
  reg [3:0] cnt_t;
  reg load, ENA;

  initial begin
    rg_hdr    = 4'b0;
    rg_dec    = 4'b0;
    rg_unt    = 4'b0;
    shrg_bc   = 8'b0;
    cnt_t     = 4'b0;
    load      = 1'b0;
    ENA       = 1'b0;
    rg_bc_new = 8'b0;
    rg_bc_old = 8'b0;
  end

  always @(posedge clk) begin
    rg_bc_new <= bc;
    rg_bc_old <= rg_bc_new;
    load      <= rg_bc_new != rg_bc_old ? 1'b1 : 1'b0;
  end

  always @(posedge clk) begin
    if (load) begin
      cnt_t <= 4'b0;
      ENA   <= 1'b0;
    end else if (cnt_t <= 4'd7) begin
      cnt_t <= cnt_t + 4'd1;
      ENA   <= 1'b1;
    end else ENA <= 1'b0;
  end

  always @(posedge clk) begin
    if (load) shrg_bc <= rg_bc_new;
    else if (ENA) shrg_bc <= shrg_bc << 1;
  end

  always @(posedge clk) begin
    if (load) begin
      rg_hdr <= 4'b0;
      rg_dec <= 4'b0;
      rg_unt <= 4'b0;
    end else if (ENA) {rg_hdr, rg_dec, rg_unt} <= {rg_hdr[2:0], F_dec, F_unt, shrg_bc[7]};
  end

  always @* begin
    F_unt = (rg_unt < 4'd5) ? rg_unt : (rg_unt + 4'd3);
    F_dec = (rg_dec < 4'd5) ? rg_dec : (rg_dec + 4'd3);
  end

  assign bdc = {rg_hdr, rg_dec, rg_unt};

endmodule
