// Lab2_nios.v

// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module Lab2_nios (
		input  wire       clk_clk,       //   clk.clk
		output wire [7:0] led_export,    //   led.export
		input  wire       reset_reset_n, // reset.reset_n
		input  wire       sw_export      //    sw.export
	);

	wire  [31:0] nios2_pd_data_master_readdata;                          // mm_interconnect_0:nios2_PD_data_master_readdata -> nios2_PD:d_readdata
	wire         nios2_pd_data_master_waitrequest;                       // mm_interconnect_0:nios2_PD_data_master_waitrequest -> nios2_PD:d_waitrequest
	wire         nios2_pd_data_master_debugaccess;                       // nios2_PD:debug_mem_slave_debugaccess_to_roms -> mm_interconnect_0:nios2_PD_data_master_debugaccess
	wire  [15:0] nios2_pd_data_master_address;                           // nios2_PD:d_address -> mm_interconnect_0:nios2_PD_data_master_address
	wire   [3:0] nios2_pd_data_master_byteenable;                        // nios2_PD:d_byteenable -> mm_interconnect_0:nios2_PD_data_master_byteenable
	wire         nios2_pd_data_master_read;                              // nios2_PD:d_read -> mm_interconnect_0:nios2_PD_data_master_read
	wire         nios2_pd_data_master_write;                             // nios2_PD:d_write -> mm_interconnect_0:nios2_PD_data_master_write
	wire  [31:0] nios2_pd_data_master_writedata;                         // nios2_PD:d_writedata -> mm_interconnect_0:nios2_PD_data_master_writedata
	wire  [31:0] nios2_pd_instruction_master_readdata;                   // mm_interconnect_0:nios2_PD_instruction_master_readdata -> nios2_PD:i_readdata
	wire         nios2_pd_instruction_master_waitrequest;                // mm_interconnect_0:nios2_PD_instruction_master_waitrequest -> nios2_PD:i_waitrequest
	wire  [15:0] nios2_pd_instruction_master_address;                    // nios2_PD:i_address -> mm_interconnect_0:nios2_PD_instruction_master_address
	wire         nios2_pd_instruction_master_read;                       // nios2_PD:i_read -> mm_interconnect_0:nios2_PD_instruction_master_read
	wire  [31:0] mm_interconnect_0_nios2_pd_debug_mem_slave_readdata;    // nios2_PD:debug_mem_slave_readdata -> mm_interconnect_0:nios2_PD_debug_mem_slave_readdata
	wire         mm_interconnect_0_nios2_pd_debug_mem_slave_waitrequest; // nios2_PD:debug_mem_slave_waitrequest -> mm_interconnect_0:nios2_PD_debug_mem_slave_waitrequest
	wire         mm_interconnect_0_nios2_pd_debug_mem_slave_debugaccess; // mm_interconnect_0:nios2_PD_debug_mem_slave_debugaccess -> nios2_PD:debug_mem_slave_debugaccess
	wire   [8:0] mm_interconnect_0_nios2_pd_debug_mem_slave_address;     // mm_interconnect_0:nios2_PD_debug_mem_slave_address -> nios2_PD:debug_mem_slave_address
	wire         mm_interconnect_0_nios2_pd_debug_mem_slave_read;        // mm_interconnect_0:nios2_PD_debug_mem_slave_read -> nios2_PD:debug_mem_slave_read
	wire   [3:0] mm_interconnect_0_nios2_pd_debug_mem_slave_byteenable;  // mm_interconnect_0:nios2_PD_debug_mem_slave_byteenable -> nios2_PD:debug_mem_slave_byteenable
	wire         mm_interconnect_0_nios2_pd_debug_mem_slave_write;       // mm_interconnect_0:nios2_PD_debug_mem_slave_write -> nios2_PD:debug_mem_slave_write
	wire  [31:0] mm_interconnect_0_nios2_pd_debug_mem_slave_writedata;   // mm_interconnect_0:nios2_PD_debug_mem_slave_writedata -> nios2_PD:debug_mem_slave_writedata
	wire         mm_interconnect_0_onchip_mem_s1_chipselect;             // mm_interconnect_0:onchip_mem_s1_chipselect -> onchip_mem:chipselect
	wire  [31:0] mm_interconnect_0_onchip_mem_s1_readdata;               // onchip_mem:readdata -> mm_interconnect_0:onchip_mem_s1_readdata
	wire  [11:0] mm_interconnect_0_onchip_mem_s1_address;                // mm_interconnect_0:onchip_mem_s1_address -> onchip_mem:address
	wire   [3:0] mm_interconnect_0_onchip_mem_s1_byteenable;             // mm_interconnect_0:onchip_mem_s1_byteenable -> onchip_mem:byteenable
	wire         mm_interconnect_0_onchip_mem_s1_write;                  // mm_interconnect_0:onchip_mem_s1_write -> onchip_mem:write
	wire  [31:0] mm_interconnect_0_onchip_mem_s1_writedata;              // mm_interconnect_0:onchip_mem_s1_writedata -> onchip_mem:writedata
	wire         mm_interconnect_0_onchip_mem_s1_clken;                  // mm_interconnect_0:onchip_mem_s1_clken -> onchip_mem:clken
	wire         mm_interconnect_0_pio_led_s1_chipselect;                // mm_interconnect_0:pio_LED_s1_chipselect -> pio_LED:chipselect
	wire  [31:0] mm_interconnect_0_pio_led_s1_readdata;                  // pio_LED:readdata -> mm_interconnect_0:pio_LED_s1_readdata
	wire   [1:0] mm_interconnect_0_pio_led_s1_address;                   // mm_interconnect_0:pio_LED_s1_address -> pio_LED:address
	wire         mm_interconnect_0_pio_led_s1_write;                     // mm_interconnect_0:pio_LED_s1_write -> pio_LED:write_n
	wire  [31:0] mm_interconnect_0_pio_led_s1_writedata;                 // mm_interconnect_0:pio_LED_s1_writedata -> pio_LED:writedata
	wire  [31:0] mm_interconnect_0_pio_sw_s1_readdata;                   // pio_SW:readdata -> mm_interconnect_0:pio_SW_s1_readdata
	wire   [1:0] mm_interconnect_0_pio_sw_s1_address;                    // mm_interconnect_0:pio_SW_s1_address -> pio_SW:address
	wire  [31:0] nios2_pd_irq_irq;                                       // irq_mapper:sender_irq -> nios2_PD:irq
	wire         rst_controller_reset_out_reset;                         // rst_controller:reset_out -> [irq_mapper:reset, mm_interconnect_0:nios2_PD_reset_reset_bridge_in_reset_reset, nios2_PD:reset_n, onchip_mem:reset, pio_LED:reset_n, pio_SW:reset_n, rst_translator:in_reset]
	wire         rst_controller_reset_out_reset_req;                     // rst_controller:reset_req -> [nios2_PD:reset_req, onchip_mem:reset_req, rst_translator:reset_req_in]

	Lab2_nios_nios2_PD nios2_pd (
		.clk                                 (clk_clk),                                                //                       clk.clk
		.reset_n                             (~rst_controller_reset_out_reset),                        //                     reset.reset_n
		.reset_req                           (rst_controller_reset_out_reset_req),                     //                          .reset_req
		.d_address                           (nios2_pd_data_master_address),                           //               data_master.address
		.d_byteenable                        (nios2_pd_data_master_byteenable),                        //                          .byteenable
		.d_read                              (nios2_pd_data_master_read),                              //                          .read
		.d_readdata                          (nios2_pd_data_master_readdata),                          //                          .readdata
		.d_waitrequest                       (nios2_pd_data_master_waitrequest),                       //                          .waitrequest
		.d_write                             (nios2_pd_data_master_write),                             //                          .write
		.d_writedata                         (nios2_pd_data_master_writedata),                         //                          .writedata
		.debug_mem_slave_debugaccess_to_roms (nios2_pd_data_master_debugaccess),                       //                          .debugaccess
		.i_address                           (nios2_pd_instruction_master_address),                    //        instruction_master.address
		.i_read                              (nios2_pd_instruction_master_read),                       //                          .read
		.i_readdata                          (nios2_pd_instruction_master_readdata),                   //                          .readdata
		.i_waitrequest                       (nios2_pd_instruction_master_waitrequest),                //                          .waitrequest
		.irq                                 (nios2_pd_irq_irq),                                       //                       irq.irq
		.debug_reset_request                 (),                                                       //       debug_reset_request.reset
		.debug_mem_slave_address             (mm_interconnect_0_nios2_pd_debug_mem_slave_address),     //           debug_mem_slave.address
		.debug_mem_slave_byteenable          (mm_interconnect_0_nios2_pd_debug_mem_slave_byteenable),  //                          .byteenable
		.debug_mem_slave_debugaccess         (mm_interconnect_0_nios2_pd_debug_mem_slave_debugaccess), //                          .debugaccess
		.debug_mem_slave_read                (mm_interconnect_0_nios2_pd_debug_mem_slave_read),        //                          .read
		.debug_mem_slave_readdata            (mm_interconnect_0_nios2_pd_debug_mem_slave_readdata),    //                          .readdata
		.debug_mem_slave_waitrequest         (mm_interconnect_0_nios2_pd_debug_mem_slave_waitrequest), //                          .waitrequest
		.debug_mem_slave_write               (mm_interconnect_0_nios2_pd_debug_mem_slave_write),       //                          .write
		.debug_mem_slave_writedata           (mm_interconnect_0_nios2_pd_debug_mem_slave_writedata),   //                          .writedata
		.dummy_ci_port                       ()                                                        // custom_instruction_master.readra
	);

	Lab2_nios_onchip_mem onchip_mem (
		.clk        (clk_clk),                                    //   clk1.clk
		.address    (mm_interconnect_0_onchip_mem_s1_address),    //     s1.address
		.clken      (mm_interconnect_0_onchip_mem_s1_clken),      //       .clken
		.chipselect (mm_interconnect_0_onchip_mem_s1_chipselect), //       .chipselect
		.write      (mm_interconnect_0_onchip_mem_s1_write),      //       .write
		.readdata   (mm_interconnect_0_onchip_mem_s1_readdata),   //       .readdata
		.writedata  (mm_interconnect_0_onchip_mem_s1_writedata),  //       .writedata
		.byteenable (mm_interconnect_0_onchip_mem_s1_byteenable), //       .byteenable
		.reset      (rst_controller_reset_out_reset),             // reset1.reset
		.reset_req  (rst_controller_reset_out_reset_req),         //       .reset_req
		.freeze     (1'b0)                                        // (terminated)
	);

	Lab2_nios_pio_LED pio_led (
		.clk        (clk_clk),                                 //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),         //               reset.reset_n
		.address    (mm_interconnect_0_pio_led_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_pio_led_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_pio_led_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_pio_led_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_pio_led_s1_readdata),   //                    .readdata
		.out_port   (led_export)                               // external_connection.export
	);

	Lab2_nios_pio_SW pio_sw (
		.clk      (clk_clk),                              //                 clk.clk
		.reset_n  (~rst_controller_reset_out_reset),      //               reset.reset_n
		.address  (mm_interconnect_0_pio_sw_s1_address),  //                  s1.address
		.readdata (mm_interconnect_0_pio_sw_s1_readdata), //                    .readdata
		.in_port  (sw_export)                             // external_connection.export
	);

	Lab2_nios_mm_interconnect_0 mm_interconnect_0 (
		.clk_clk_clk                                (clk_clk),                                                //                              clk_clk.clk
		.nios2_PD_reset_reset_bridge_in_reset_reset (rst_controller_reset_out_reset),                         // nios2_PD_reset_reset_bridge_in_reset.reset
		.nios2_PD_data_master_address               (nios2_pd_data_master_address),                           //                 nios2_PD_data_master.address
		.nios2_PD_data_master_waitrequest           (nios2_pd_data_master_waitrequest),                       //                                     .waitrequest
		.nios2_PD_data_master_byteenable            (nios2_pd_data_master_byteenable),                        //                                     .byteenable
		.nios2_PD_data_master_read                  (nios2_pd_data_master_read),                              //                                     .read
		.nios2_PD_data_master_readdata              (nios2_pd_data_master_readdata),                          //                                     .readdata
		.nios2_PD_data_master_write                 (nios2_pd_data_master_write),                             //                                     .write
		.nios2_PD_data_master_writedata             (nios2_pd_data_master_writedata),                         //                                     .writedata
		.nios2_PD_data_master_debugaccess           (nios2_pd_data_master_debugaccess),                       //                                     .debugaccess
		.nios2_PD_instruction_master_address        (nios2_pd_instruction_master_address),                    //          nios2_PD_instruction_master.address
		.nios2_PD_instruction_master_waitrequest    (nios2_pd_instruction_master_waitrequest),                //                                     .waitrequest
		.nios2_PD_instruction_master_read           (nios2_pd_instruction_master_read),                       //                                     .read
		.nios2_PD_instruction_master_readdata       (nios2_pd_instruction_master_readdata),                   //                                     .readdata
		.nios2_PD_debug_mem_slave_address           (mm_interconnect_0_nios2_pd_debug_mem_slave_address),     //             nios2_PD_debug_mem_slave.address
		.nios2_PD_debug_mem_slave_write             (mm_interconnect_0_nios2_pd_debug_mem_slave_write),       //                                     .write
		.nios2_PD_debug_mem_slave_read              (mm_interconnect_0_nios2_pd_debug_mem_slave_read),        //                                     .read
		.nios2_PD_debug_mem_slave_readdata          (mm_interconnect_0_nios2_pd_debug_mem_slave_readdata),    //                                     .readdata
		.nios2_PD_debug_mem_slave_writedata         (mm_interconnect_0_nios2_pd_debug_mem_slave_writedata),   //                                     .writedata
		.nios2_PD_debug_mem_slave_byteenable        (mm_interconnect_0_nios2_pd_debug_mem_slave_byteenable),  //                                     .byteenable
		.nios2_PD_debug_mem_slave_waitrequest       (mm_interconnect_0_nios2_pd_debug_mem_slave_waitrequest), //                                     .waitrequest
		.nios2_PD_debug_mem_slave_debugaccess       (mm_interconnect_0_nios2_pd_debug_mem_slave_debugaccess), //                                     .debugaccess
		.onchip_mem_s1_address                      (mm_interconnect_0_onchip_mem_s1_address),                //                        onchip_mem_s1.address
		.onchip_mem_s1_write                        (mm_interconnect_0_onchip_mem_s1_write),                  //                                     .write
		.onchip_mem_s1_readdata                     (mm_interconnect_0_onchip_mem_s1_readdata),               //                                     .readdata
		.onchip_mem_s1_writedata                    (mm_interconnect_0_onchip_mem_s1_writedata),              //                                     .writedata
		.onchip_mem_s1_byteenable                   (mm_interconnect_0_onchip_mem_s1_byteenable),             //                                     .byteenable
		.onchip_mem_s1_chipselect                   (mm_interconnect_0_onchip_mem_s1_chipselect),             //                                     .chipselect
		.onchip_mem_s1_clken                        (mm_interconnect_0_onchip_mem_s1_clken),                  //                                     .clken
		.pio_LED_s1_address                         (mm_interconnect_0_pio_led_s1_address),                   //                           pio_LED_s1.address
		.pio_LED_s1_write                           (mm_interconnect_0_pio_led_s1_write),                     //                                     .write
		.pio_LED_s1_readdata                        (mm_interconnect_0_pio_led_s1_readdata),                  //                                     .readdata
		.pio_LED_s1_writedata                       (mm_interconnect_0_pio_led_s1_writedata),                 //                                     .writedata
		.pio_LED_s1_chipselect                      (mm_interconnect_0_pio_led_s1_chipselect),                //                                     .chipselect
		.pio_SW_s1_address                          (mm_interconnect_0_pio_sw_s1_address),                    //                            pio_SW_s1.address
		.pio_SW_s1_readdata                         (mm_interconnect_0_pio_sw_s1_readdata)                    //                                     .readdata
	);

	Lab2_nios_irq_mapper irq_mapper (
		.clk        (clk_clk),                        //       clk.clk
		.reset      (rst_controller_reset_out_reset), // clk_reset.reset
		.sender_irq (nios2_pd_irq_irq)                //    sender.irq
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (1),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~reset_reset_n),                     // reset_in0.reset
		.clk            (clk_clk),                            //       clk.clk
		.reset_out      (rst_controller_reset_out_reset),     // reset_out.reset
		.reset_req      (rst_controller_reset_out_reset_req), //          .reset_req
		.reset_req_in0  (1'b0),                               // (terminated)
		.reset_in1      (1'b0),                               // (terminated)
		.reset_req_in1  (1'b0),                               // (terminated)
		.reset_in2      (1'b0),                               // (terminated)
		.reset_req_in2  (1'b0),                               // (terminated)
		.reset_in3      (1'b0),                               // (terminated)
		.reset_req_in3  (1'b0),                               // (terminated)
		.reset_in4      (1'b0),                               // (terminated)
		.reset_req_in4  (1'b0),                               // (terminated)
		.reset_in5      (1'b0),                               // (terminated)
		.reset_req_in5  (1'b0),                               // (terminated)
		.reset_in6      (1'b0),                               // (terminated)
		.reset_req_in6  (1'b0),                               // (terminated)
		.reset_in7      (1'b0),                               // (terminated)
		.reset_req_in7  (1'b0),                               // (terminated)
		.reset_in8      (1'b0),                               // (terminated)
		.reset_req_in8  (1'b0),                               // (terminated)
		.reset_in9      (1'b0),                               // (terminated)
		.reset_req_in9  (1'b0),                               // (terminated)
		.reset_in10     (1'b0),                               // (terminated)
		.reset_req_in10 (1'b0),                               // (terminated)
		.reset_in11     (1'b0),                               // (terminated)
		.reset_req_in11 (1'b0),                               // (terminated)
		.reset_in12     (1'b0),                               // (terminated)
		.reset_req_in12 (1'b0),                               // (terminated)
		.reset_in13     (1'b0),                               // (terminated)
		.reset_req_in13 (1'b0),                               // (terminated)
		.reset_in14     (1'b0),                               // (terminated)
		.reset_req_in14 (1'b0),                               // (terminated)
		.reset_in15     (1'b0),                               // (terminated)
		.reset_req_in15 (1'b0)                                // (terminated)
	);

endmodule