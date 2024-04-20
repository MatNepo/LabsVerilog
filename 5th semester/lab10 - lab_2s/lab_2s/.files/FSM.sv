module FSM 
(
	input rst_ni, clk, ENA,
	output reg [4:1] digi,
	output reg [1:0] sel
);

parameter S0 = 0, S1 = 1, S2 = 2, S3 = 3;
reg [1:0] state = S0;

always @(posedge clk or negedge rst_ni) begin
	if (~rst_ni)
		state <= S0;
	else if (ENA) case (state)
		S0: state <= S1;
		S1: state <= S2;
		S2: state <= S3;
		S3: state <= S0;
	endcase
end

always @(state) begin
	case (state)
		S0: begin
			digi = 4'b0001;
			sel = 2'b00;
		end
		S1: begin
			digi = 4'b0010;
			sel = 2'b01;
		end
		S2: begin
			digi = 4'b0100;
			sel = 2'b11;
		end
		S3: begin
			digi = 4'b1000;
			sel = 2'b10;
		end
	endcase
end

endmodule
