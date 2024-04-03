`timescale 1ns/1ns
module my_slave (
// clock amd reset
    input bit        csi_clk, // clocl clk
    input bit        rsi_reset, // reset reset
// MM Slave
    input bit [7:0]  avs_s0_writedata, // MM Slave writedata
    input bit        avs_s0_write, // MM Slave write
    output bit        avs_s0_waitrequest, // MM Slave wairequest
// Conduit
    output bit [7:0] coe_s0_Dout
);
    bit [7:0] rg_DATA;
    assign avs_s0_waitrequest = 1'b0;

    always_ff @(posedge csi_clk) begin
        if (rsi_reset)
            rg_DATA <= 8'd0;
        else if (avs_s0_write)
            rg_DATA <= avs_s0_writedata;
    end
    assign coe_s0_Dout = rg_DATA;
endmodule
