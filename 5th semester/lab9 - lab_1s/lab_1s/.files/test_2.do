vsim -t 1ns led_drv_tb
add wave clk
add wave rst
add wave ena
add wave dint
add wave excepted_result
run -all