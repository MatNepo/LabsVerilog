module lab4_1
#(parameter cmd=4'd10)
(
	input clk, srst, ena,
	output reg cout
);

integer q = 32'b0;

// Отвечает за счетчик
always @ (posedge clk)
	if (ena)
		if (!srst)
			q <= 1'b0;
		else
			if (q == cmd - 1'b1) 
				q <= 1'b0;
			else
				q <= q + 1'b1;

// Отвечает за cout
always @ (posedge clk)
	if (ena)
		cout <= (q == cmd - 2'd2 && srst) ? 1'b1 : 1'b0;
			
endmodule
