`timescale 1 ns / 1 ns
module master (bus_MM.master bus);
    enum bit[1:0] {initSM, nop, wr1D} fsm_MM;
    bit [7:0] cnt;
    always_ff @ (posedge bus.CLK)
    if (bus.reset) begin
        fsm_MM <= initSM;
        cnt    <= '0;
	end	else
        case (fsm_MM)
            initSM : fsm_MM <= nop;
            nop    : fsm_MM <= wr1D;
            wr1D   : begin
                        fsm_MM <= nop;
                        cnt <= cnt + 8'd1;
                    end
        endcase
    always_comb begin
        case (fsm_MM)
            wr1D: begin
                bus.address   = cnt;
                bus.write     = '1;
                bus.writedata = cnt;
            end
            default: begin
                bus.address   = 8'd99;
                bus.write     = 1'd0;
                bus.writedata = 8'd99;
            end
        endcase
    end
endmodule