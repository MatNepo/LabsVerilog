`timescale 1ns / 1ns
module tb_LFSR_7_6_3_1_0_F ();
  bit       CLK;
  bit       RST;
  bit       ENA;
  bit [7:1] LFSR_out;

  LFSR_7_6_3_1_0_F LFSR_7_6_3_1_0_F_inst (.*);

  localparam CLK_PERIOD = 20; 

  initial forever #(CLK_PERIOD / 2) CLK = ~CLK;

  bit [7:1] CNT_int = '0;

  bit [7:1] LFSR_out_start = '0;

  initial begin
    RST = '1;
    #(CLK_PERIOD * 3 / 4);
    RST = '0;
    #(CLK_PERIOD * 5 / 4);
    ENA = '1;
    forever begin
      @(negedge CLK);
      if (CNT_int == '0) LFSR_out_start = LFSR_out;
      else if (LFSR_out_start == LFSR_out) break;
      CNT_int += 1;
    end
    #(CLK_PERIOD * 5);
    $stop;
  end

endmodule
