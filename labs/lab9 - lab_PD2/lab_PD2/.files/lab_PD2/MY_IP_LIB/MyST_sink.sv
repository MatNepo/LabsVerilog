`timescale 1 ns / 1 ns
module MyST_sink (
//clk and reset 
    input  bit  csi_clk,                // clock clk
    input  bit  rsi_reset,              // reset reset
//stream sink
    input  bit [3:0] 	asi_in0_data, 	// ST data
	input  bit        	asi_in0_valid,	// ST valid
	output bit        	asi_in0_ready,	// ST ready
//conduit    
    output bit [3:0] 	coe_c0_Dout 
);
bit [3:0] cnt_int;

always_ff @(posedge csi_clk)
    if(rsi_reset) 	        cnt_int <= 4'd0;
    else 			        cnt_int <= cnt_int + 4'd1;
always_ff @(posedge csi_clk)
    if(rsi_reset)           coe_c0_Dout <= 4'd0;
    else 	if (asi_in0_ready & asi_in0_valid)  
                            coe_c0_Dout <= asi_in0_data;
always_ff @(posedge csi_clk)
    if(rsi_reset)   asi_in0_ready <= 1'b0;
    else    if ((cnt_int >= 4'd8) & (cnt_int <= 4'd11))
    						asi_in0_ready <= 1'b1;
    		else			asi_in0_ready <= 1'b0;
endmodule
