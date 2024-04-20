module lab4_3
#(parameter top_cmd=25'd25000000, top_cm=7'd60)
(
	input clk, rst, load, dir,
	input [6:0] din,;
	output reg [6:0] q
);

reg rst_temp,			rst_int;
reg dir_temp,			dir_int;
reg load_temp,			load_int;
reg [6:0] din_temp,	din_int;

always @ (posedge clk) begin
	dir_temp <= dir;
	dir_int <= dir_temp;
	
	load_temp <= load;
	load_int <= load_temp;
	
	din_temp <= din;
	din_int <= din_temp;
end

always @ (posedge clk, negedge rst)
	if (!rst) begin
		rst_temp <= 1'b0;
		rst_int <= 1'b0;
	end else begin
		rst_temp <= 1'b1;
		rst_int <= rst_temp;
	end

wire cout;

lab4_1 #(.cmd(top_cmd)) lab4_1 (.clk(clk), .srst(rst_int), .ena(1'b1), .cout(cout));
lab4_2 #(.cm(top_cm)) lab4_2 (.clk(clk), .arst(rst_int), .ena(cout), .load(load_int), .dir(dir_int), .din(din_int), .q(q));

endmodule
