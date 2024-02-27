// Code your design here
module enumt;

	typedef enum logic[7:0] {red, blu, grn} colorT;
	colorT sigl = blu;

	initial
		begin
			$display("sigl = ", sigl);
			$display("sigl using name = ", sigl.name);
			$display("sigl using string = %s", sigl); // tool dependent
			$finish;
		end

endmodule : enumt
