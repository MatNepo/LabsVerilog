module impl_CR_1 (
  (* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "23" *)
  input bit CLK,
  (* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "46 25 24" *)
  input bit [2:0] SW,
  (* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "84, 76, 85, 77, 86, 133, 87" *)
  output bit [6:0] ss,
  (* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "73, 80, 74, 83" *)
  output bit [4:1] dig,
  (* altera_attribute = "-name IO_STANDARD \"2.5-V\"", chip_pin = "69 70 71 72" *)
  output bit [3:0] LED
);
  bit Enwrk = 1'b0;

  CR_1 u_CR_1 (
    .CLK,
    .ENgen(SW[1]),
    .Enwrk,
    .RST  (RST_snh[1]),
    .ENraf(SW[2]),
    .usedw(LED),
    .ss,
    .dig
  );

  bit [1:0] RST_snh = 1'b0;

  always_ff @(posedge CLK) begin
    RST_snh <= {RST_snh[0], SW[0]};
  end
  
  int counter = 0;
  always_ff @(posedge CLK) begin
	if (counter > 8000000) begin
		Enwrk <= 1'b1;
		counter <= 1'b0;
	end else begin
		Enwrk <= 1'b0;
		counter <= counter + 1;
	end
  end

endmodule
