transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib Sp_1
vmap Sp_1 Sp_1
vlog -vlog01compat -work Sp_1 +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/lab8\ \ -\ lab_MS_SV5/lab_MS_SV5/Sp_1/synthesis/submodules {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/lab8  - lab_MS_SV5/lab_MS_SV5/Sp_1/synthesis/submodules/altsource_probe_top.v}
vlib SP_unit
vmap SP_unit SP_unit
vlog -vlog01compat -work SP_unit +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/lab8\ \ -\ lab_MS_SV5/lab_MS_SV5/SP_unit/synthesis {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/lab8  - lab_MS_SV5/lab_MS_SV5/SP_unit/synthesis/SP_unit.v}
vlog -vlog01compat -work SP_unit +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/lab8\ \ -\ lab_MS_SV5/lab_MS_SV5/SP_unit/synthesis/submodules {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/lab8  - lab_MS_SV5/lab_MS_SV5/SP_unit/synthesis/submodules/altsource_probe_top.v}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/lab8\ \ -\ lab_MS_SV5/lab_MS_SV5 {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/lab8  - lab_MS_SV5/lab_MS_SV5/lab_MS_SV5_interface.sv}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/lab8\ \ -\ lab_MS_SV5/lab_MS_SV5 {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/lab8  - lab_MS_SV5/lab_MS_SV5/slave_ODD.sv}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/lab8\ \ -\ lab_MS_SV5/lab_MS_SV5 {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/lab8  - lab_MS_SV5/lab_MS_SV5/slave_EVEN.sv}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/lab8\ \ -\ lab_MS_SV5/lab_MS_SV5 {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/lab8  - lab_MS_SV5/lab_MS_SV5/master.sv}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/lab8\ \ -\ lab_MS_SV5/lab_MS_SV5 {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/lab8  - lab_MS_SV5/lab_MS_SV5/lab_ms_sv5.sv}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/lab8\ \ -\ lab_MS_SV5/lab_MS_SV5 {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/lab8  - lab_MS_SV5/lab_MS_SV5/db_lab_MS_SV5.sv}

vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/lab8\ \ -\ lab_MS_SV5/lab_MS_SV5 {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/lab8  - lab_MS_SV5/lab_MS_SV5/tb_lab_MS_SV5.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -L Sp_1 -L SP_unit -voptargs="+acc"  tb_lab_MS_SV5

add wave *
view structure
view signals
run -all
