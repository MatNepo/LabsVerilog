transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib SP_unit
vmap SP_unit SP_unit
vlog -vlog01compat -work SP_unit +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Works_Verilog/Third\ year/6th\ semester/labs/lab5/db_lab_MS_SV2/SP_unit/synthesis {D:/Users/Legion/Quartus and Verilog/Works_Verilog/Third year/6th semester/labs/lab5/db_lab_MS_SV2/SP_unit/synthesis/SP_unit.v}
vlog -vlog01compat -work SP_unit +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Works_Verilog/Third\ year/6th\ semester/labs/lab5/db_lab_MS_SV2/SP_unit/synthesis/submodules {D:/Users/Legion/Quartus and Verilog/Works_Verilog/Third year/6th semester/labs/lab5/db_lab_MS_SV2/SP_unit/synthesis/submodules/altsource_probe_top.v}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Works_Verilog/Third\ year/6th\ semester/labs/lab5/db_lab_MS_SV2 {D:/Users/Legion/Quartus and Verilog/Works_Verilog/Third year/6th semester/labs/lab5/db_lab_MS_SV2/lab_MS_SV2.sv}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Works_Verilog/Third\ year/6th\ semester/labs/lab5/db_lab_MS_SV2 {D:/Users/Legion/Quartus and Verilog/Works_Verilog/Third year/6th semester/labs/lab5/db_lab_MS_SV2/impl_lab_MS_SV2.sv}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Works_Verilog/Third\ year/6th\ semester/labs/lab5/db_lab_MS_SV2 {D:/Users/Legion/Quartus and Verilog/Works_Verilog/Third year/6th semester/labs/lab5/db_lab_MS_SV2/db_lab_MS_SV2.sv}

vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Works_Verilog/Third\ year/6th\ semester/labs/lab5/db_lab_MS_SV2 {D:/Users/Legion/Quartus and Verilog/Works_Verilog/Third year/6th semester/labs/lab5/db_lab_MS_SV2/tb_lab_MS_SV2.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -L SP_unit -voptargs="+acc"  tb_lab_MS_SV2

add wave *
view structure
view signals
run -all
