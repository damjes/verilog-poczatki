testbench.vcd: testbench.out
	./$<

%.out: testbench.v $(wildcard *.v)
	iverilog -o $@ $<