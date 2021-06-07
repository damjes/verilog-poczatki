`timescale 1ns/1ns
`include "bramka_or.v"
`include "bramka_and.v"

module testbench();
reg a, b;
wire or_out, and_out;

bramka_or br_or(or_out, a, b);
bramka_and br_and(and_out, a, b);

initial begin
	$dumpfile("testbench.vcd");
	$dumpvars(1);
	a = 0; b = 0; #10;
	a = 0; b = 1; #10;
	a = 1; b = 1; #10;
	a = 1; b = 0; #10;
	$finish;
end

endmodule