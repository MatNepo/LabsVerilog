// SP_unit.v

// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module SP_unit (
		input  wire       source_clk, // source_clk.clk
		output wire [8:0] source      //    sources.source
	);

	altsource_probe #(
		.sld_auto_instance_index ("YES"),
		.sld_instance_index      (0),
		.instance_id             ("NONE"),
		.probe_width             (0),
		.source_width            (9),
		.source_initial_value    ("0"),
		.enable_metastability    ("YES")
	) in_system_sources_probes_0 (
		.source     (source),     //    sources.source
		.source_clk (source_clk), // source_clk.clk
		.source_ena (1'b1)        // (terminated)
	);

endmodule
