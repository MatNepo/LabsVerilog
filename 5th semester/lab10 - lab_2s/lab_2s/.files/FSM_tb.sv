module FSM_tb ();
reg rst_ni, clk, ENA;
reg [4:1] digi;
reg [1:0] sel;

FSM FSM (rst_ni, clk, ENA, digi, sel);

localparam CLK_PERIOD = 20;

initial begin
	clk = 1'b0;
	forever #(CLK_PERIOD / 2) clk = ~clk;
end

function check (
	input[4:1] exp_digi,
	input[1:0] exp_sel
);
	if (exp_digi != digi || exp_sel != sel) begin
		$display("Expected: %d, %d\nReal: %d, %d", exp_digi, exp_sel, digi, sel);
		$stop;
	end
endfunction
	

initial begin
	rst_ni = 1'b1;
	ENA = 1'b1;
	#CLK_PERIOD
	check(4'b0010, 2'b01);
	#CLK_PERIOD
	check(4'b0100, 2'b11);
	#CLK_PERIOD
	check(4'b1000, 2'b10);
	ENA = 1'b0;
	#CLK_PERIOD
	check(4'b1000, 2'b10);
	ENA = 1'b1;
	#CLK_PERIOD
	check(4'b0001, 2'b00);
	#CLK_PERIOD
	check(4'b0010, 2'b01);
	rst_ni = 1'b0;
	#(CLK_PERIOD / 10)
	check(4'b0001, 2'b00);
	rst_ni = 1'b1;
	#(CLK_PERIOD / 10 * 9)
	check(4'b0010, 2'b01);
	$display("All tests have been passed!");
	$stop;
end

endmodule
