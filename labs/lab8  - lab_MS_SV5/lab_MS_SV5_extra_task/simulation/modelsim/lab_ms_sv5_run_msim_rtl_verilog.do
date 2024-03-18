transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/lab8\ \ -\ lab_MS_SV5/lab_MS_SV5_extra_task {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/lab8  - lab_MS_SV5/lab_MS_SV5_extra_task/lab_MS_SV5_interface.sv}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/lab8\ \ -\ lab_MS_SV5/lab_MS_SV5_extra_task {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/lab8  - lab_MS_SV5/lab_MS_SV5_extra_task/slave_ODD.sv}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/lab8\ \ -\ lab_MS_SV5/lab_MS_SV5_extra_task {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/lab8  - lab_MS_SV5/lab_MS_SV5_extra_task/slave_EVEN.sv}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/lab8\ \ -\ lab_MS_SV5/lab_MS_SV5_extra_task {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/lab8  - lab_MS_SV5/lab_MS_SV5_extra_task/master.sv}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/lab8\ \ -\ lab_MS_SV5/lab_MS_SV5_extra_task {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/lab8  - lab_MS_SV5/lab_MS_SV5_extra_task/lab_ms_sv5.sv}

vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/lab8\ \ -\ lab_MS_SV5/lab_MS_SV5_extra_task {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/lab8  - lab_MS_SV5/lab_MS_SV5_extra_task/tb_lab_MS_SV5.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_lab_MS_SV5

add wave *
view structure
view signals
run -all
