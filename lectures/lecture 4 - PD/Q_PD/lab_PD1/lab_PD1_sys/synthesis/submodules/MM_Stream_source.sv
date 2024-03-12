`timescale 1 ps / 1 ps
module MM_Stream_source (
    //clk and reset 
        input  bit  csi_clk,                    // clock clk
        input  bit  rsi_reset,                  // reset reset
    //stream source
        output bit  [31:0]  aso_out0_data,      // ST source data
        input  bit          aso_out0_ready,     // ST source ready
        output bit          aso_out0_valid,     // ST source valid
    //MM slave
        input bit [31:0]    avs_s0_writedata,   // MM slave writedata
        input bit           avs_s0_write,       // MM slave write
        output bit          avs_s0_waitrequest  // MM slave waitrequest
    );

always_ff @(posedge csi_clk)
    if(rsi_reset)           aso_out0_data <= 32'd255;
    else if (avs_s0_write & aso_out0_ready)  
                            aso_out0_data <= avs_s0_writedata;  

always_ff @(posedge csi_clk)
    if(rsi_reset)   aso_out0_valid <= 1'b0;
    else            aso_out0_valid <= avs_s0_write & aso_out0_ready;

assign avs_s0_waitrequest = 1'b0;

endmodule
