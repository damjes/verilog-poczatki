`timescale 1ns/1ns
`include "dzielnik.v"

module testbench();

reg clk, res;
wire dzielnik1_out;
wire dzielnik2_out;

dzielnik #(2, 1) dzielnik1 (dzielnik1_out, clk, res);
dzielnik #(6, 3) dzielnik2 (dzielnik2_out, clk, res);
dzielnik #(10, 4) dzielnik3 (dzielnik3_out, clk, res);

initial begin
	$dumpfile("testbench.vcd");
	$dumpvars(1);
end

integer i;

initial begin
	for(i=0; i<30; i=i+1) begin
		clk = 1; #10;
		clk = 0; #10;
	end
end

initial begin
	res = 1; #1; res = 0;
end

endmodule