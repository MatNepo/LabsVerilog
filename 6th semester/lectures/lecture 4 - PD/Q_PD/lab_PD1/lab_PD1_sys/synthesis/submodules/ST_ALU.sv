`timescale 1 ns / 1 ns
module ST_ALU (
    input  bit        	csi_clk,    	    // clock clk
    input  bit        	rsi_reset,  	    // reset reset    
// stream sink0
    input  bit [31:0] 	asi_in0_data, 	    // ST sink data
    input  bit        	asi_in0_valid,	    // ST sink valid
    output bit        	asi_in0_ready,	    // ST sink ready
// stream sink1
    input  bit [31:0]   asi_in1_data,       // ST sink data
    input  bit          asi_in1_valid,      // ST sink valid
    output bit          asi_in1_ready,      // ST sink ready
//stream source
    output bit  [31:0]  aso_out0_data,      // ST source data
    input  bit          aso_out0_ready,     // ST source ready
    output bit          aso_out0_valid,     // ST source valid
//MM slave
    input bit [31:0]    avs_s0_writedata,   // MM slave writedata
    input bit           avs_s0_write,       // MM slave write
    output bit          avs_s0_waitrequest  // MM slave waitrequest
    );
bit [31:0] ALU_type; //Type ALU mult = 111 add  = 222  div  = 333  sub = 444

always_ff @(posedge csi_clk) 
	if(rsi_reset)          ALU_type <= '0;
	else if (avs_s0_write) ALU_type <= avs_s0_writedata;

always_ff @(posedge csi_clk) 
    if(rsi_reset)   begin 
                        aso_out0_data   <= '0;
                        aso_out0_valid  <= '0;
                    end
    else 
        if (asi_in0_valid & asi_in1_valid & aso_out0_ready)
            case (ALU_type)
                'd111   : begin aso_out0_data <= asi_in0_data * asi_in1_data; aso_out0_valid  <= 1'b1; end
                'd222   : begin aso_out0_data <= asi_in0_data + asi_in1_data; aso_out0_valid  <= 1'b1; end
                'd333   : begin aso_out0_data <= asi_in0_data / asi_in1_data; aso_out0_valid  <= 1'b1; end
                'd444   : begin aso_out0_data <= asi_in0_data - asi_in1_data; aso_out0_valid  <= 1'b1; end
                default : begin aso_out0_data <= '0;  aso_out0_valid  <= 1'b0; end
            endcase

assign asi_in0_ready 	= 1'b1;
assign asi_in1_ready    = 1'b1;
assign avs_s0_waitrequest  	= 1'b0;

endmodule
