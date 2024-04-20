transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/lab7\ \ -\ lab_MS_SV4/lab_MS_SV4 {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/lab7  - lab_MS_SV4/lab_MS_SV4/lab_MS_SV4_pack.sv}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/lab7\ \ -\ lab_MS_SV4/lab_MS_SV4 {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/lab7  - lab_MS_SV4/lab_MS_SV4/lab_MS_SV4.sv}

vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/lab7\ \ -\ lab_MS_SV4/lab_MS_SV4 {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/lab7  - lab_MS_SV4/lab_MS_SV4/tb_lab_MS_SV4.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_lab_MS_SV4

add wave *
view structure
view signals
run -all
