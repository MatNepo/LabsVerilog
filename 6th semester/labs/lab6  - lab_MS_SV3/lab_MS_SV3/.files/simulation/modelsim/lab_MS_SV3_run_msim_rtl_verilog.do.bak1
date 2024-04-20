transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/lab6/lab_MS_SV3 {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/lab6/lab_MS_SV3/RAM.v}
vlog -vlog01compat -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/lab6/lab_MS_SV3 {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/lab6/lab_MS_SV3/PLL.v}
vlog -vlog01compat -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/lab6/lab_MS_SV3/db {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/lab6/lab_MS_SV3/db/pll_altpll.v}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/lab6/lab_MS_SV3 {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/lab6/lab_MS_SV3/histogram_unit.sv}

vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/lab6/lab_MS_SV3 {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/lab6/lab_MS_SV3/tb_histogram_unit.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_histogram_unit

add wave *
view structure
view signals
run -all
