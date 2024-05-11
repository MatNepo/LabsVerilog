module CI_Power (
	input bit [31:0] dataa,
	input bit [31:0] datab,
	output bit [31:0] result
);

assign result = dataa * datab;

endmodule
