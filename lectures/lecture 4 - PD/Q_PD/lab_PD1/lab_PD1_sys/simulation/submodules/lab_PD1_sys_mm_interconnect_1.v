// lab_PD1_sys_mm_interconnect_1.v

// This file was auto-generated from altera_mm_interconnect_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module lab_PD1_sys_mm_interconnect_1 (
		input  wire        clk_clk_clk,                                  //                                clk_clk.clk
		input  wire        my_masterA_reset_reset_bridge_in_reset_reset, // my_masterA_reset_reset_bridge_in_reset.reset
		input  wire [31:0] my_masterA_m0_address,                        //                          my_masterA_m0.address
		output wire        my_masterA_m0_waitrequest,                    //                                       .waitrequest
		input  wire        my_masterA_m0_write,                          //                                       .write
		input  wire [31:0] my_masterA_m0_writedata,                      //                                       .writedata
		output wire        MM_Stream_source_s0_write,                    //                    MM_Stream_source_s0.write
		output wire [31:0] MM_Stream_source_s0_writedata,                //                                       .writedata
		input  wire        MM_Stream_source_s0_waitrequest               //                                       .waitrequest
	);

	wire         my_mastera_m0_translator_avalon_universal_master_0_waitrequest;   // MM_Stream_source_s0_translator:uav_waitrequest -> my_masterA_m0_translator:uav_waitrequest
	wire  [31:0] my_mastera_m0_translator_avalon_universal_master_0_readdata;      // MM_Stream_source_s0_translator:uav_readdata -> my_masterA_m0_translator:uav_readdata
	wire         my_mastera_m0_translator_avalon_universal_master_0_debugaccess;   // my_masterA_m0_translator:uav_debugaccess -> MM_Stream_source_s0_translator:uav_debugaccess
	wire  [31:0] my_mastera_m0_translator_avalon_universal_master_0_address;       // my_masterA_m0_translator:uav_address -> MM_Stream_source_s0_translator:uav_address
	wire         my_mastera_m0_translator_avalon_universal_master_0_read;          // my_masterA_m0_translator:uav_read -> MM_Stream_source_s0_translator:uav_read
	wire   [3:0] my_mastera_m0_translator_avalon_universal_master_0_byteenable;    // my_masterA_m0_translator:uav_byteenable -> MM_Stream_source_s0_translator:uav_byteenable
	wire         my_mastera_m0_translator_avalon_universal_master_0_readdatavalid; // MM_Stream_source_s0_translator:uav_readdatavalid -> my_masterA_m0_translator:uav_readdatavalid
	wire         my_mastera_m0_translator_avalon_universal_master_0_lock;          // my_masterA_m0_translator:uav_lock -> MM_Stream_source_s0_translator:uav_lock
	wire         my_mastera_m0_translator_avalon_universal_master_0_write;         // my_masterA_m0_translator:uav_write -> MM_Stream_source_s0_translator:uav_write
	wire  [31:0] my_mastera_m0_translator_avalon_universal_master_0_writedata;     // my_masterA_m0_translator:uav_writedata -> MM_Stream_source_s0_translator:uav_writedata
	wire   [2:0] my_mastera_m0_translator_avalon_universal_master_0_burstcount;    // my_masterA_m0_translator:uav_burstcount -> MM_Stream_source_s0_translator:uav_burstcount

	altera_merlin_master_translator #(
		.AV_ADDRESS_W                (32),
		.AV_DATA_W                   (32),
		.AV_BURSTCOUNT_W             (1),
		.AV_BYTEENABLE_W             (4),
		.UAV_ADDRESS_W               (32),
		.UAV_BURSTCOUNT_W            (3),
		.USE_READ                    (0),
		.USE_WRITE                   (1),
		.USE_BEGINBURSTTRANSFER      (0),
		.USE_BEGINTRANSFER           (0),
		.USE_CHIPSELECT              (0),
		.USE_BURSTCOUNT              (0),
		.USE_READDATAVALID           (0),
		.USE_WAITREQUEST             (1),
		.USE_READRESPONSE            (0),
		.USE_WRITERESPONSE           (0),
		.AV_SYMBOLS_PER_WORD         (4),
		.AV_ADDRESS_SYMBOLS          (1),
		.AV_BURSTCOUNT_SYMBOLS       (0),
		.AV_CONSTANT_BURST_BEHAVIOR  (0),
		.UAV_CONSTANT_BURST_BEHAVIOR (0),
		.AV_LINEWRAPBURSTS           (0),
		.AV_REGISTERINCOMINGSIGNALS  (0)
	) my_mastera_m0_translator (
		.clk                    (clk_clk_clk),                                                      //                       clk.clk
		.reset                  (my_masterA_reset_reset_bridge_in_reset_reset),                     //                     reset.reset
		.uav_address            (my_mastera_m0_translator_avalon_universal_master_0_address),       // avalon_universal_master_0.address
		.uav_burstcount         (my_mastera_m0_translator_avalon_universal_master_0_burstcount),    //                          .burstcount
		.uav_read               (my_mastera_m0_translator_avalon_universal_master_0_read),          //                          .read
		.uav_write              (my_mastera_m0_translator_avalon_universal_master_0_write),         //                          .write
		.uav_waitrequest        (my_mastera_m0_translator_avalon_universal_master_0_waitrequest),   //                          .waitrequest
		.uav_readdatavalid      (my_mastera_m0_translator_avalon_universal_master_0_readdatavalid), //                          .readdatavalid
		.uav_byteenable         (my_mastera_m0_translator_avalon_universal_master_0_byteenable),    //                          .byteenable
		.uav_readdata           (my_mastera_m0_translator_avalon_universal_master_0_readdata),      //                          .readdata
		.uav_writedata          (my_mastera_m0_translator_avalon_universal_master_0_writedata),     //                          .writedata
		.uav_lock               (my_mastera_m0_translator_avalon_universal_master_0_lock),          //                          .lock
		.uav_debugaccess        (my_mastera_m0_translator_avalon_universal_master_0_debugaccess),   //                          .debugaccess
		.av_address             (my_masterA_m0_address),                                            //      avalon_anti_master_0.address
		.av_waitrequest         (my_masterA_m0_waitrequest),                                        //                          .waitrequest
		.av_write               (my_masterA_m0_write),                                              //                          .write
		.av_writedata           (my_masterA_m0_writedata),                                          //                          .writedata
		.av_burstcount          (1'b1),                                                             //               (terminated)
		.av_byteenable          (4'b1111),                                                          //               (terminated)
		.av_beginbursttransfer  (1'b0),                                                             //               (terminated)
		.av_begintransfer       (1'b0),                                                             //               (terminated)
		.av_chipselect          (1'b0),                                                             //               (terminated)
		.av_read                (1'b0),                                                             //               (terminated)
		.av_readdata            (),                                                                 //               (terminated)
		.av_readdatavalid       (),                                                                 //               (terminated)
		.av_lock                (1'b0),                                                             //               (terminated)
		.av_debugaccess         (1'b0),                                                             //               (terminated)
		.uav_clken              (),                                                                 //               (terminated)
		.av_clken               (1'b1),                                                             //               (terminated)
		.uav_response           (2'b00),                                                            //               (terminated)
		.av_response            (),                                                                 //               (terminated)
		.uav_writeresponsevalid (1'b0),                                                             //               (terminated)
		.av_writeresponsevalid  ()                                                                  //               (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (1),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (32),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.USE_READRESPONSE               (0),
		.USE_WRITERESPONSE              (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) mm_stream_source_s0_translator (
		.clk                    (clk_clk_clk),                                                      //                      clk.clk
		.reset                  (my_masterA_reset_reset_bridge_in_reset_reset),                     //                    reset.reset
		.uav_address            (my_mastera_m0_translator_avalon_universal_master_0_address),       // avalon_universal_slave_0.address
		.uav_burstcount         (my_mastera_m0_translator_avalon_universal_master_0_burstcount),    //                         .burstcount
		.uav_read               (my_mastera_m0_translator_avalon_universal_master_0_read),          //                         .read
		.uav_write              (my_mastera_m0_translator_avalon_universal_master_0_write),         //                         .write
		.uav_waitrequest        (my_mastera_m0_translator_avalon_universal_master_0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid      (my_mastera_m0_translator_avalon_universal_master_0_readdatavalid), //                         .readdatavalid
		.uav_byteenable         (my_mastera_m0_translator_avalon_universal_master_0_byteenable),    //                         .byteenable
		.uav_readdata           (my_mastera_m0_translator_avalon_universal_master_0_readdata),      //                         .readdata
		.uav_writedata          (my_mastera_m0_translator_avalon_universal_master_0_writedata),     //                         .writedata
		.uav_lock               (my_mastera_m0_translator_avalon_universal_master_0_lock),          //                         .lock
		.uav_debugaccess        (my_mastera_m0_translator_avalon_universal_master_0_debugaccess),   //                         .debugaccess
		.av_write               (MM_Stream_source_s0_write),                                        //      avalon_anti_slave_0.write
		.av_writedata           (MM_Stream_source_s0_writedata),                                    //                         .writedata
		.av_waitrequest         (MM_Stream_source_s0_waitrequest),                                  //                         .waitrequest
		.av_address             (),                                                                 //              (terminated)
		.av_read                (),                                                                 //              (terminated)
		.av_readdata            (32'b11011110101011011101111010101101),                             //              (terminated)
		.av_begintransfer       (),                                                                 //              (terminated)
		.av_beginbursttransfer  (),                                                                 //              (terminated)
		.av_burstcount          (),                                                                 //              (terminated)
		.av_byteenable          (),                                                                 //              (terminated)
		.av_readdatavalid       (1'b0),                                                             //              (terminated)
		.av_writebyteenable     (),                                                                 //              (terminated)
		.av_lock                (),                                                                 //              (terminated)
		.av_chipselect          (),                                                                 //              (terminated)
		.av_clken               (),                                                                 //              (terminated)
		.uav_clken              (1'b0),                                                             //              (terminated)
		.av_debugaccess         (),                                                                 //              (terminated)
		.av_outputenable        (),                                                                 //              (terminated)
		.uav_response           (),                                                                 //              (terminated)
		.av_response            (2'b00),                                                            //              (terminated)
		.uav_writeresponsevalid (),                                                                 //              (terminated)
		.av_writeresponsevalid  (1'b0)                                                              //              (terminated)
	);

endmodule