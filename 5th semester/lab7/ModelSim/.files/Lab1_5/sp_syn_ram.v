// Copyright 1991-2009 Mentor Graphics Corporation

// All Rights Reserved.

// THIS WORK CONTAINS TRADE SECRET AND PROPRIETARY INFORMATION WHICH IS THE PROPERTY OF 
// MENTOR GRAPHICS CORPORATION OR ITS LICENSORS AND IS SUBJECT TO LICENSE TERMS.

`timescale 1ns/1ns
module \sp_syn_ram-rtl
    #(parameter data_width = 8,
      parameter addr_width = 3)
     (input  [addr_width-1:0] addr,
      input  [data_width-1:0] data_in,
      input                   inclk,
      input                   outclk,
      input                   we,
      output reg [data_width-1:0] data_out);

    reg [data_width-1:0] mem [0:(2**addr_width)-1];

    always @(posedge inclk) begin : write_proc
        if (we == 1)
            mem[addr] <= data_in;
    end

    always @(posedge outclk) begin : read_proc
        data_out = mem[addr];
    end

endmodule


`timescale 1ns/1ns
module \sp_syn_ram-3D 
    #(parameter data_width = 8,
      parameter addr_width = 3)
     (input  [addr_width-1:0] addr,
      input  [data_width-1:0] data_in,
      input                   inclk,
      input                   outclk,
      input                   we,
      output reg [data_width-1:0] data_out);

    reg [data_width-1:0] mem [0:3] [0:(2**(addr_width-2))-1];

    always @(posedge inclk) begin : write_proc
        if (we == 1) begin
            mem[addr[addr_width-1:addr_width-2]][addr[addr_width-3:0]] <= data_in;
        end
    end

    always @(posedge outclk) begin : read_proc
        data_out = mem[addr[addr_width-1:addr_width-2]][addr[addr_width-3:0]];
    end

endmodule
