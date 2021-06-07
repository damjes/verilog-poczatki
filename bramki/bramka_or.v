module bramka_or(
	output reg y,
	input a,
	input b
);

always @(*) begin
	if (a) y=1;
	else y=b;
end

endmodule