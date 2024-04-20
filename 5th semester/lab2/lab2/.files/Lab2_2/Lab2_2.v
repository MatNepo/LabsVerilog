module Lab2_2#(this_WIDTH = 5)(
    // inputs
	 input [this_WIDTH-1:0] a,
    input [this_WIDTH-1:0] b,
    input [this_WIDTH-1:0] c,
    input [this_WIDTH-1:0] d,
	 // outputs
    output wire [this_WIDTH-1:0] minRes,
    output wire [this_WIDTH-1:0] maxRes
);
	 // reorder parameters from Lab2_1
	 defparam minNumbers.WIDTH = this_WIDTH, minNumbers.type = "minsel";
	 defparam maxNumbers.WIDTH = this_WIDTH, maxNumbers.type = "maxsel";
	 
	 // use parameters from Lab2_1 to complete Lab2_2
	 lab2_1 minNumbers (a ,b, c, d, minRes);
	 lab2_1 maxNumbers (a ,b, c, d, maxRes);
	 
endmodule