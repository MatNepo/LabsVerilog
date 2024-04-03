`timescale 1ns/1ns
module my_Dslave (
// clock amd reset
    input bit        csi_clk, // clocl clk
    input bit        rsi_reset, // reset reset
// MM Slave
    input bit [7:0]  avs_s0_writedata, // MM Slave writedata
    input bit        avs_s0_write, // MM Slave write
    output bit       avs_s0_waitrequest, // MM Slave wairequest
// Conduit
    output bit [7:0] coe_s0_Dout
);
    bit [7:0] cnt_;
    assign avs_s0_waitrequest = 1'b0;

    always_ff @(posedge csi_clk) begin
        if (rsi_reset)
            cnt_ <= 8'd0;
        else if (avs_s0_write)
            cnt_ <= cnt_ + 8'd1;
    end
    assign coe_s0_Dout = cnt_;
endmodule
