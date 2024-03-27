`timescale 1 ns / 1 ns
module my_slave (
// clock and reset
input bit 			csi_clk, 			// clock 
input bit 			rsi_reset,			// reset
// MM Slave 	
input bit [7:0] 	avs_s0_writedata,	//  MM Slave writedata
input bit 			avs_s0_write, 		//  MM Slave write
output bit        	avs_s0_waitrequest,	//  MM Slave waitrequest
//Conduit
output bit [7:0] 	coe_s0_Dout
);

assign avs_s0_waitrequest = 1'b0;

always_ff @(posedge csi_clk)
	if (rsi_reset) 			coe_s0_Dout <= 8'd0;
	else if (avs_s0_write)	coe_s0_Dout <= avs_s0_writedata;
endmodule
