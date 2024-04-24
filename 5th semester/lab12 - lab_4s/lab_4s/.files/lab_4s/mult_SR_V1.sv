module mult_SR_V1 #(
  parameter W = 4
) (
  input                    clk,
  input      [    W - 1:0] dA,
  input      [    W - 1:0] dB,
  output reg [2 * W - 1:0] a_mult_b,
  output reg               ready
);

  reg [W - 1:0] A_new, A_old;
  reg [W - 1:0] B_new, B_old;
  reg                              load;
  reg [(W == 1 ? 1 : $clog2(W)):0] i;

  initial begin
    A_new    <= 1'b0;
    A_old    <= 1'b0;
    B_new    <= 1'b0;
    B_old    <= 1'b0;
    load     <= 1'b0;
    i        <= 1'b0;
    a_mult_b <= 1'b0;
    ready    <= 1'b0;
  end

  always @(posedge clk) begin
    A_new <= dA;
    A_old <= A_new;

    B_new <= dB;
    B_old <= B_new;
  end

  always @* begin
    if (A_new != A_old | B_new != B_old) load = 1'b1;
    else load = 1'b0;
  end

  localparam INIT = 0, SHIFT_ANS = 1, SUM_A = 2, END_MULT = 3;
  reg [1:0] state = INIT;

  always @(posedge clk) begin
    if (load) state <= INIT;
    else
      case (state)
        INIT:      state <= SHIFT_ANS;
        SHIFT_ANS: state <= SUM_A;
        SUM_A:     state <= (i == 0 ? END_MULT : SHIFT_ANS);
        END_MULT:  state <= END_MULT;
      endcase
  end

  always @(posedge clk) begin
    case (state)
      INIT: begin
        i        <= W;
        a_mult_b <= 1'b0;
        ready    <= 1'b0;
      end
      SHIFT_ANS: begin
        i        <= i - 1;
        a_mult_b <= a_mult_b << 1;
      end
      SUM_A: begin
        a_mult_b <= a_mult_b + (B_old[i] ? A_old : 1'b0);
      end
      END_MULT: begin
        ready <= 1'b1;
      end
    endcase
  end

endmodule
