// SP_unit.v

// Generated using ACDS version 20.1 720

`timescale 1 ps / 1 ps
module SP_unit (
		input  wire [9:0] probe,      //     probes.probe
		input  wire       source_clk, // source_clk.clk
		output wire [0:0] source      //    sources.source
	);

	altsource_probe #(
		.sld_auto_instance_index ("YES"),
		.sld_instance_index      (0),
		.instance_id             ("SP_0"),
		.probe_width             (10),
		.source_width            (1),
		.source_initial_value    ("0"),
		.enable_metastability    ("YES")
	) in_system_sources_probes_0 (
		.source     (source),     //    sources.source
		.source_clk (source_clk), // source_clk.clk
		.probe      (probe),      //     probes.probe
		.source_ena (1'b1)        // (terminated)
	);

endmodule