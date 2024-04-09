module Lab1 (
    input bit clk, // Clock
    input bit sw,  // data in
    input bit pbb, // Asynchronus reset active low
    output bit [7:0] led
);
	Lab1_nios u0 (
		.clk_clk       (clk), //   clk.clk
		.reset_reset_n (pbb), // reset.reset_n
		.led_export    (led), //   led.export
		.sw_export     (sw)   //    sw.export
	);

endmodule
