module dzielnik #(
	parameter MAX = 7,
	parameter ROZ = 3
) (
	output reg clk_out,
	input clk_in,
	input res
);

reg [ROZ-1:0] value;

always @(clk_in) begin
	if(value == MAX-1) begin
		value <= 0;
		clk_out <= ~clk_out;
	end
	else
		value <= value+1;
end

always @(posedge res) begin
	clk_out <= 0;
	value <= 0;
end

endmodule