`timescale 1 ns / 1 ns
module my_masterB #(
	parameter  [31:0] address_1 = 0, parameter  [31:0] data_1 = 111, //mult = 111  div	= 333
	parameter  [31:0] address_2 = 1, parameter  [31:0] data_2 = 333  //add  = 222  sub = 444
) (
	input  bit        	csi_clk,        	//  MM master clk
	input  bit        	rsi_reset,       	//  MM master reset		
	output bit [31:0]  	avm_m0_address,   	//  MM master address
	output bit        	avm_m0_write,     	//  MM master write
	output bit [31:0] 	avm_m0_writedata, 	//  MM master writedata
	input  bit        	avm_m0_waitrequest	//  MM master waitrequest
);
typedef enum bit[2:0] {initSM, del1, wr1D,  del2, wr2D, ended } fsm_type; 
fsm_type fsm_MM;

always_ff @ (posedge csi_clk)
if (rsi_reset) fsm_MM <= initSM;
else
	case (fsm_MM)
		initSM 	: 							fsm_MM <= del1;
		del1 	: 							fsm_MM <= wr1D;
		wr1D 	: 	if (avm_m0_waitrequest) fsm_MM <= wr1D;
					else 					fsm_MM <= del2;
		del2	:							fsm_MM <= wr2D;
		wr2D	: 	if (avm_m0_waitrequest) fsm_MM <= wr2D;
					else 					fsm_MM <= ended;  
		ended 	: 							fsm_MM <= ended;
	endcase

always_comb
begin 
	case (fsm_MM)	
		wr1D:
			begin
				avm_m0_address		= address_1;
				avm_m0_write 		= 1'd1;
				avm_m0_writedata 	= data_1;
			end
		wr2D:
			begin
				avm_m0_address		= address_2;
				avm_m0_write 		= 1'd1;
				avm_m0_writedata 	= data_2;
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
