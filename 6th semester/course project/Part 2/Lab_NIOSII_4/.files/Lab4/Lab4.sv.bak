module lab4 (
  input  bit       clk,
  input  bit       pbb,
  input  bit       pba,
  output bit [7:0] led
);

  Lab4_nios u0 (
    .clk_clk      (clk),  //   clk.clk
    .reset_reset_n(pbb),  //   reset.reset_n
    .led_export   (led),  //   led.export
    .pba_export   (pba)   //   pba.export
  );

endmodule
