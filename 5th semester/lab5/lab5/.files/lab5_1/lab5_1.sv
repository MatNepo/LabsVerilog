module lab5_1
(
	input clk, srst_in,
	input [3:0] din,
	output reg [7:0] q
);

reg [1:0] state;
reg srst_temp, srst;
reg [3:0] din_temp, d;

parameter S0 = 0, S1 = 1, S2 = 2;

always @ (posedge clk) begin
	srst_temp <= srst_in;
	srst <= srst_temp;
	
	din_temp <= din;
	d <= din_temp;
end

always @ (posedge clk or negedge srst) 
	if (~srst)
		state <= S0;
	else 
		case (state)
			S0: state <= (d == 4'h1) ? S1 : S0;
			S1: state <= (d == 4'h2) ? S2 : S1;
			S2: state <= (d == 4'h4) ? S1 : (d == 4'h8 ? S0 : S2);
		endcase


always @ (state) 
	case (state)
		S0: q <= 8'h00;
		S1: q <= 8'h55;
		S2: q <= 8'hff;
		default:
			q <= 0;
	endcase

endmodule 