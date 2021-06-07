module licznik #(
	parameter MAX = 7,
	parameter ROZ = 3
) (
	output reg [ROZ-1:0] value,
	input clk,
	input res
);

always @(posedge clk)
	if(!res)
		if(value == MAX)
			value <= 0;
		else
			value <= value+1;

always @(posedge res)
	value <= 0;
	
endmodule