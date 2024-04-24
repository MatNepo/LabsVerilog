module lab6_3
#(parameter W=2, TYPE="lab6_2")
(
	(* altera_attribute = "-name IO_STANDARD \"3.3-V LVTTL\"", chip_pin = "88, 89" *)
	input		[W-1:0] 	a,	
	(* altera_attribute = "-name IO_STANDARD \"3.3-V LVTTL\"", chip_pin = "90, 91" *)
	input		[W-1:0]	b,	
	(* altera_attribute = "-name IO_STANDARD \"3.3-V LVTTL\"", chip_pin = "49, 46" *)
	input		[W-1:0]	c,	
	(* altera_attribute = "-name IO_STANDARD \"3.3-V LVTTL\"", chip_pin = "25, 24" *)
	input		[W-1:0]	d, 
	(* altera_attribute = "-name IO_STANDARD \"3.3-V LVTTL\"", chip_pin = "23" *)
	input 	clk,
	(* altera_attribute = "-name IO_STANDARD \"2.5 V\"", chip_pin = "64" *)
	input		rst,
	(* altera_attribute = "-name IO_STANDARD \"2.5 V\"", chip_pin = "65, 66" *)
	output	reg	[W-1:0]	min,	
	(* altera_attribute = "-name IO_STANDARD \"2.5 V\"", chip_pin = "67, 68" *)
	output	reg	[W-1:0]	midl,	
	(* altera_attribute = "-name IO_STANDARD \"2.5 V\"", chip_pin = "69, 70" *)
	output	reg	[W-1:0]	midh,	
	(* altera_attribute = "-name IO_STANDARD \"2.5 V\"", chip_pin = "71, 72" *)
	output	reg	[W-1:0]	max
);

wire 	[W-1:0] 	min_1, max_1, 
					min_2, max_2, 
					min_3, max_3, 
					min_, midl_, midh_, max_;
reg	[W-1:0] 	a_, b_, c_, d_;

always @(posedge clk)
begin
	if (!rst)
	begin
		a_ <= 0;
		b_ <= 0;
		c_ <= 0;
		d_ <= 0;
		min <= 0;
		midl <= 0;
		midh <= 0;
		max <= 0;
	end
	else
	begin
		a_ <= a;
		b_ <= b;
		c_ <= c;
		d_ <= d;
		min <= min_;
		midl <= midl_;
		midh <= midh_;
		max <= max_;
	end
end

generate
	if (TYPE == "lab6_1") 
	begin :lab6_1
		lab6_1 #(.W(W)) lab6_1_1 (.a(a_), .b(b_), .min(min_1), .max(max_1));
		lab6_1 #(.W(W)) lab6_1_2 (.a(c_), .b(d_), .min(min_2), .max(max_2));
		lab6_1 #(.W(W)) lab6_1_3 (.a(min_1), .b(min_2), .min(min_), .max(max_3));
		lab6_1 #(.W(W)) lab6_1_4 (.a(max_1), .b(max_2), .min(min_3), .max(max_));
		lab6_1 #(.W(W)) lab6_1_5 (.a(min_3), .b(max_3), .min(midl_), .max(midh_));
	end
	else
	begin :lab6_2
		lab6_2 #(.W(W)) lab6_2_1 (.a(a_), .b(b_), .min(min_1), .max(max_1));
		lab6_2 #(.W(W)) lab6_2_2 (.a(c_), .b(d_), .min(min_2), .max(max_2));
		lab6_2 #(.W(W)) lab6_2_3 (.a(min_1), .b(min_2), .min(min_), .max(max_3));
		lab6_2 #(.W(W)) lab6_2_4 (.a(max_1), .b(max_2), .min(min_3), .max(max_));
		lab6_2 #(.W(W)) lab6_2_5 (.a(min_3), .b(max_3), .min(midl_), .max(midh_));
	end
endgenerate

endmodule