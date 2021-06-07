`timescale 1ns/1ns
`include "licznik.v"

module testbench();

reg clk, res;
wire [1:0] licznik1_out;
wire [3:0] licznik2_out;

licznik #(3, 2) licznik1 (licznik1_out, clk, res);
licznik #(12, 4) licznik2 (licznik2_out, clk, res);

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
	res = 1; #5; res = 0; #55;
	res = 1; #80; res = 0; #35;
	res = 1; #80; res = 0; #5;
end

endmodule