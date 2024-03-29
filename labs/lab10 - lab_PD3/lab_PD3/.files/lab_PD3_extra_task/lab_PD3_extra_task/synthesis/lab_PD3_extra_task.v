// lab_PD3_extra_task.v

// Generated using ACDS version 20.1 720

`timescale 1 ps / 1 ps
module lab_PD3_extra_task (
		input  wire        clk_clk,       //    clk.clk
		output wire [7:0]  dout_a_export, // dout_a.export
		output wire [31:0] dout_b_export, // dout_b.export
		input  wire        reset_reset_n  //  reset.reset_n
	);

	wire         my_master_m0_waitrequest;                    // mm_interconnect_0:my_master_m0_waitrequest -> my_master:avm_m0_waitrequest
	wire  [31:0] my_master_m0_address;                        // my_master:avm_m0_address -> mm_interconnect_0:my_master_m0_address
	wire         my_master_m0_write;                          // my_master:avm_m0_write -> mm_interconnect_0:my_master_m0_write
	wire  [31:0] my_master_m0_writedata;                      // my_master:avm_m0_writedata -> mm_interconnect_0:my_master_m0_writedata
	wire         mm_interconnect_0_my_slave_s0_waitrequest;   // my_slave:avs_s0_waitrequest -> mm_interconnect_0:my_slave_s0_waitrequest
	wire         mm_interconnect_0_my_slave_s0_write;         // mm_interconnect_0:my_slave_s0_write -> my_slave:avs_s0_write
	wire   [7:0] mm_interconnect_0_my_slave_s0_writedata;     // mm_interconnect_0:my_slave_s0_writedata -> my_slave:avs_s0_writedata
	wire         mm_interconnect_0_my_slavews_s0_waitrequest; // my_slaveWS:avs_s0_waitrequest -> mm_interconnect_0:my_slaveWS_s0_waitrequest
	wire         mm_interconnect_0_my_slavews_s0_write;       // mm_interconnect_0:my_slaveWS_s0_write -> my_slaveWS:avs_s0_write
	wire  [31:0] mm_interconnect_0_my_slavews_s0_writedata;   // mm_interconnect_0:my_slaveWS_s0_writedata -> my_slaveWS:avs_s0_writedata

	my_master #(
		.address_1 (24),
		.data_1    (287454020),
		.address_2 (48),
		.data_2    (6)
	) my_master (
		.csi_clk            (clk_clk),                  // clock.clk
		.rsi_reset          (~reset_reset_n),           // reset.reset
		.avm_m0_address     (my_master_m0_address),     //    m0.address
		.avm_m0_write       (my_master_m0_write),       //      .write
		.avm_m0_writedata   (my_master_m0_writedata),   //      .writedata
		.avm_m0_waitrequest (my_master_m0_waitrequest)  //      .waitrequest
	);

	my_slave my_slave (
		.csi_clk            (clk_clk),                                   //         clock.clk
		.rsi_reset          (~reset_reset_n),                            //         reset.reset
		.avs_s0_writedata   (mm_interconnect_0_my_slave_s0_writedata),   //            s0.writedata
		.avs_s0_write       (mm_interconnect_0_my_slave_s0_write),       //              .write
		.avs_s0_waitrequest (mm_interconnect_0_my_slave_s0_waitrequest), //              .waitrequest
		.coe_s0_Dout        (dout_a_export)                              // conduit_end_0.export
	);

	my_slaveWS my_slavews (
		.csi_clk            (clk_clk),                                     //         clock.clk
		.rsi_reset          (~reset_reset_n),                              //         reset.reset
		.avs_s0_writedata   (mm_interconnect_0_my_slavews_s0_writedata),   //            s0.writedata
		.avs_s0_write       (mm_interconnect_0_my_slavews_s0_write),       //              .write
		.avs_s0_waitrequest (mm_interconnect_0_my_slavews_s0_waitrequest), //              .waitrequest
		.coe_s0_Dout        (dout_b_export)                                // conduit_end_0.export
	);

	lab_PD3_extra_task_mm_interconnect_0 mm_interconnect_0 (
		.clk_clk_clk                                 (clk_clk),                                     //                               clk_clk.clk
		.my_master_reset_reset_bridge_in_reset_reset (~reset_reset_n),                              // my_master_reset_reset_bridge_in_reset.reset
		.my_master_m0_address                        (my_master_m0_address),                        //                          my_master_m0.address
		.my_master_m0_waitrequest                    (my_master_m0_waitrequest),                    //                                      .waitrequest
		.my_master_m0_write                          (my_master_m0_write),                          //                                      .write
		.my_master_m0_writedata                      (my_master_m0_writedata),                      //                                      .writedata
		.my_slave_s0_write                           (mm_interconnect_0_my_slave_s0_write),         //                           my_slave_s0.write
		.my_slave_s0_writedata                       (mm_interconnect_0_my_slave_s0_writedata),     //                                      .writedata
		.my_slave_s0_waitrequest                     (mm_interconnect_0_my_slave_s0_waitrequest),   //                                      .waitrequest
		.my_slaveWS_s0_write                         (mm_interconnect_0_my_slavews_s0_write),       //                         my_slaveWS_s0.write
		.my_slaveWS_s0_writedata                     (mm_interconnect_0_my_slavews_s0_writedata),   //                                      .writedata
		.my_slaveWS_s0_waitrequest                   (mm_interconnect_0_my_slavews_s0_waitrequest)  //                                      .waitrequest
	);

endmodule
