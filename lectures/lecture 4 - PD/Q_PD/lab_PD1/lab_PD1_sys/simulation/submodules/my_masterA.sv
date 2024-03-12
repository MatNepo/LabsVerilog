`timescale 1 ns / 1 ns
module my_masterA #(
	parameter  integer address 	= 0, 
	parameter  integer data 	= 100 //cnt_up = 100; cnt_down = 200
) (
//MM master 
	input  bit        	csi_clk,        	//  MM master clk
	input  bit        	rsi_reset,       	//  MM master reset		
	output bit [31:0]  	avm_m0_address,   	//  MM master address
	output bit        	avm_m0_write,     	//  MM master write
	output bit [31:0] 	avm_m0_writedata, 	//  MM master writedata
	input  bit        	avm_m0_waitrequest  //  MM master waitrequest
);
enum bit[1:0] {initSM, del1, wr1D,  ended } fsm_MM; 

always_ff @ (posedge csi_clk)
if (rsi_reset) fsm_MM <= initSM;
else
	case (fsm_MM)
		initSM 	: 							fsm_MM <= del1;
		del1 	: 							fsm_MM <= wr1D;
		wr1D 	: 	if (avm_m0_waitrequest) fsm_MM <= wr1D;
					else 					fsm_MM <= ended;
		ended 	: 							fsm_MM <= ended;
	endcase

always_comb
begin 
	case (fsm_MM)	
		wr1D:
			begin
				avm_m0_address		= address;
				avm_m0_write 		= 1'd1;
				avm_m0_writedata 	= data;
			end
		default
			begin
				avm_m0_address		= 32'd255;
				avm_m0_write 		= 1'd0;
				avm_m0_writedata 	= 32'd255;
			end
	endcase 
end 			
endmodule
