module lab6_4
#(parameter W=10, TYPE="lab6_2")
(
	input		[W-1:0] 	a,	b,	c,	d, 
	input 	clk, rst,
	output	reg	[W-1:0]	min, midl, midh, max
);

wire 	[W-1:0] 	min_1, max_1, 
					min_2, max_2, 
					min_3, max_3, 
					min_, midl_, midh_, max_;
reg	[W-1:0] 	a_, b_, c_, d_,
					temp_min_1, temp_max_1,
					temp_min_2, temp_max_2,
					temp_min_3, temp_max_3,
					temp_min_,	temp_max_;

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
		temp_min_1 <= 0;
		temp_min_2 <= 0;
		temp_min_3 <= 0;
		temp_max_1 <= 0;
		temp_max_2 <= 0;
		temp_max_3 <= 0;
		temp_min_  <= 0;
		temp_max_  <= 0;
	end
	else
	begin
		a_ <= a;
		b_ <= b;
		c_ <= c;
		d_ <= d;
		temp_min_1 <= min_1;
		temp_min_2 <= min_2;
		temp_min_3 <= min_3;
		temp_max_1 <= max_1;
		temp_max_2 <= max_2;
		temp_max_3 <= max_3;
		temp_min_  <= min_;
		temp_max_  <= max_;
		min <= temp_min_;
		midl <= midl_;
		midh <= midh_;
		max <= temp_max_;
	end
end

generate
	if (TYPE == "lab6_1") 
	begin :lab6_1
		lab6_1 #(.W(W)) lab6_1_1 (.a(a_), .b(b_), .min(min_1), .max(max_1));
		lab6_1 #(.W(W)) lab6_1_2 (.a(c_), .b(d_), .min(min_2), .max(max_2));
		lab6_1 #(.W(W)) lab6_1_3 (.a(temp_min_1), .b(temp_min_2), .min(min_), .max(max_3));
		lab6_1 #(.W(W)) lab6_1_4 (.a(temp_max_1), .b(temp_max_2), .min(min_3), .max(max_));
		lab6_1 #(.W(W)) lab6_1_5 (.a(temp_min_3), .b(temp_max_3), .min(midl_), .max(midh_));
	end
	else
	begin :lab6_2
		lab6_2 #(.W(W)) lab6_2_1 (.a(a_), .b(b_), .min(min_1), .max(max_1));
		lab6_2 #(.W(W)) lab6_2_2 (.a(c_), .b(d_), .min(min_2), .max(max_2));
		lab6_2 #(.W(W)) lab6_2_3 (.a(temp_min_1), .b(temp_min_2), .min(min_), .max(max_3));
		lab6_2 #(.W(W)) lab6_2_4 (.a(temp_max_1), .b(temp_max_2), .min(min_3), .max(max_));
		lab6_2 #(.W(W)) lab6_2_5 (.a(temp_min_3), .b(temp_max_3), .min(midl_), .max(midh_));
	end
endgenerate

endmodule
