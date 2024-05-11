module lab6 (
  input  bit       clk,
  input  bit       pbb,
  input  bit [7:0] sw,
  output bit [7:0] led
);

  Lab6_nios u0 (
    .clk_clk      (clk),      //   clk.clk
    .led_export   (led),      //   led.export
    .reset_reset_n(pbb),      // reset.reset_n
    .dataa_export (sw[7:4]),  // dataa.export
    .datab_export (sw[3:0])   // datab.export
  );

endmodule
