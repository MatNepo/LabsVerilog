`timescale 1ns/1ns

module my_master (
    // clock and reset
    input bit        csi_clk,             // clock clk
    input bit        rsi_reset,           // reset reset
    // Avalon MM master
    output bit [7:0] avm_m0_address,      // MM master address
    output bit       avm_m0_write,        // MM master write
    output bit [7:0] avm_m0_writedata,    // MM master writedata
    input bit       avm_m0_waitrequest,  // MM master waitrequest
    // conduit
    input bit [7:0]  coe_c0_DA
);

    typedef enum bit [1:0] {initSM, del1, wr1D, del2} fsm_type;
    fsm_type fsm_MM;
    bit [7:0] cnt_intA;

    always_ff @(posedge csi_clk) begin
        if (rsi_reset) begin
            fsm_MM   <= initSM;
            cnt_intA <= 8'd0;
        end
        else begin
            case (fsm_MM)
                initSM: fsm_MM <= del1;
                del1:   fsm_MM <= wr1D;
                wr1D:   if (avm_m0_waitrequest)
                            fsm_MM <= wr1D;
                        else
                            fsm_MM <= del2;
                del2:   begin
                            fsm_MM <= initSM;
                            cnt_intA <= cnt_intA + 8'd1;
                        end
            endcase
        end
    end

    always_comb begin
        case (fsm_MM)
            wr1D:
                begin
                    avm_m0_address     = cnt_intA;
                    avm_m0_write       = 1'd1;
                    avm_m0_writedata   = cnt_intA + coe_c0_DA;
                end
            default:
                begin
                    avm_m0_address     = 8'd255;
                    avm_m0_write       = 1'd0;
                    avm_m0_writedata   = 8'd255;
                end
        endcase
    end
endmodule
