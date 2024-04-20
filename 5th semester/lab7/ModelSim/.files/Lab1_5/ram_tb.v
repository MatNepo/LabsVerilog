// Copyright 1991-2009 Mentor Graphics Corporation

// All Rights Reserved.

// THIS WORK CONTAINS TRADE SECRET AND PROPRIETARY INFORMATION WHICH IS THE PROPERTY OF 
// MENTOR GRAPHICS CORPORATION OR ITS LICENSORS AND IS SUBJECT TO LICENSE TERMS.

`define clk_pd 100

`timescale 1ns/1ns
module ram_tb ();
    reg we;
    reg clk;
    reg [19:0] addr;
    reg [3:0]  inaddr;
    reg [3:0]  outaddr;
    reg [31:0] data_in;

    wire [7:0]   data_sp1;
    wire [16:0]  data_sp2;
    wire [31:0]  data_sp3;
    wire [15:0]  data_sp4;
    wire [7:0]   data_dp1;

    \sp_syn_ram-rtl #(.data_width(8), .addr_width(12)) spram1
        (.inclk(clk),
         .outclk(clk),
         .we(we),
         .addr(addr[11:0]),
         .data_in(data_in[7:0]),
         .data_out(data_sp1));

    \sp_syn_ram-rtl #(.data_width(17), .addr_width(11)) spram2
        (.inclk(clk),
         .outclk(clk),
         .we(we),
         .addr(addr[10:0]),
         .data_in(data_in[16:0]),
         .data_out(data_sp2));

    \sp_syn_ram-rtl #(.data_width(32), .addr_width(16)) spram3
        (.inclk(clk),
         .outclk(clk),
         .we(we),
         .addr(addr[15:0]),
         .data_in(data_in[31:0]),
         .data_out(data_sp3));

    \sp_syn_ram-3D #(.data_width(16), .addr_width(8)) spram4
        (.inclk(clk),
         .outclk(clk),
         .we(we),
         .addr(addr[7:0]),
         .data_in(data_in[15:0]),
         .data_out(data_sp4));

    \dp_syn_ram-rtl #(.data_width(8), .addr_width(4)) dpram1
        (.inclk(clk),
         .outclk(clk),
         .we(we),
         .inaddr(inaddr),
         .outaddr(outaddr),
         .data_in(data_in[7:0]),
         .data_out(data_dp1));

    initial begin : clock_driver
        clk = 0;
        forever #(`clk_pd/2) clk = ~clk;
    end


    integer i;
    initial begin : ctrl_sim
        for (i = 0; i < 1024; i = i + 1) begin
            we       <= 1;
            data_in  <= 16'd9000 + i;
            addr     <= i;
            inaddr   <= i;
            outaddr  <= i;
            @(negedge clk);
            @(negedge clk);

            data_in  <= 16'd7 + i;
            addr     <= 1 + i;
            inaddr   <= 1 + i;
            @(negedge clk);
            @(negedge clk);

            data_in  <= 16'd3;
            addr     <= 2 + i;
            inaddr   <= 2 + i;
            @(negedge clk);
            @(negedge clk);

            data_in  <= 16'd30330;
            addr     <= 3 + i;
            inaddr   <= 3 + i;
            @(negedge clk);
            @(negedge clk);

            we       <= 0;
            addr     <= i;
            outaddr  <= i;
            @(negedge clk);
            @(negedge clk);

            addr     <= 1 + i;
            outaddr  <= 1 + i;
            @(negedge clk);
            @(negedge clk);

            addr     <= 2 + i;
            outaddr  <= 2 + i;
            @(negedge clk);
            @(negedge clk);

            addr     <= 3 + i;
            outaddr  <= 3 + i;
            @(negedge clk);
            @(negedge clk);
        end

        $display("### End of Simulation!");
        $stop;
    end
endmodule
