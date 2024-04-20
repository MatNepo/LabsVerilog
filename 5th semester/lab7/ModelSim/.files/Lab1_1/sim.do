vsim test_counter
add wave count
add wave clk
add wave reset
force -freeze clk 0 0, 1 {50 ns} -r 100 ns
force reset 1
run 100 ns
force reset 0
run 300 ns
force reset 1
run 400 ns
force reset 0
run 200 ns