`timescale 1 ps / 1 ps
module MyST_source (
//clk and reset 
    input  bit  csi_clk,               // clock clk
    input  bit  rsi_reset,             // reset reset
//stream source
    output bit  [3:0]  aso_out0_data,  // ST data
    input  bit         aso_out0_ready, // ST ready
    output bit         aso_out0_valid  // ST valid
);
bit [3:0] cnt_int;
always_ff @(posedge csi_clk)
    if(rsi_reset)               cnt_int <= 4'd0;
    else if (aso_out0_ready)    cnt_int <= cnt_int + 4'd1;

assign aso_out0_data = cnt_int;

always_ff @(posedge csi_clk)
    if(rsi_reset)   aso_out0_valid <= 1'b0;
    else    if ((cnt_int >= 4'd1) & (cnt_int<= 4'd4))
    				aso_out0_valid <= 1'b1;
            else    aso_out0_valid <= 1'b0;
endmodule
