
# setup an oscillator on the CLK input
force clk 1 50  -r 100
force clk 0 100 -r 100

# reset the clock and then count to 8'd100
force reset 1
run 100
if {[examine -decimal count] != {0}} {
	echo "!!! Error: Reset failed. COUNT is [examine -decimal count]."
} else {
	echo "Reset OK. COUNT is [examine -decimal count]."
}

force reset 0
run 10000
if {[examine -decimal count] != {100}} {
	echo "!!! Error: Counting to 8'd100 failed. COUNT is [examine -decimal count]."
} else {
	echo "Test passed. COUNT is [examine -decimal count]."
}
