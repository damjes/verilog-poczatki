module bramka_and(
	output reg y,
	input a,
	input b
);

always @(*) begin
	if (a) y=b;
	else y=0;
end

endmodule