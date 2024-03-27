`timescale 1 ns / 1 ns
module my_slaveWS (
input bit 			csi_clk, 
input bit 			rsi_reset,
input bit [31:0] 	avs_s0_writedata,
input bit 			avs_s0_write,
output bit [31:0] 	coe_s0_Dout,
output bit        	avs_s0_waitrequest);

bit temp_write;

always_ff @(posedge csi_clk)
	if (rsi_reset) temp_write <= '0;
	else temp_write <= avs_s0_write;

assign avs_s0_waitrequest = avs_s0_write & ~temp_write;

always_ff @(posedge csi_clk)
	if (rsi_reset) 	coe_s0_Dout <= 32'd0;
	else if (avs_s0_write)	coe_s0_Dout <= avs_s0_writedata;
endmodule

