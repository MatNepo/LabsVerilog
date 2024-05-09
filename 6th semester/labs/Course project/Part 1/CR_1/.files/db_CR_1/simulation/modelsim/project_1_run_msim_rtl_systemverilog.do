transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/Course\ project/Part\ 1/CR_1/db_CR_1 {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/Course project/Part 1/CR_1/db_CR_1/FIFO.v}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/Course\ project/Part\ 1/CR_1/db_CR_1 {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/Course project/Part 1/CR_1/db_CR_1/LFSR_8_7_6_4_3_2_1_F.sv}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/Course\ project/Part\ 1/CR_1/db_CR_1 {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/Course project/Part 1/CR_1/db_CR_1/RaF.sv}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/Course\ project/Part\ 1/CR_1/db_CR_1/lab_3s {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/Course project/Part 1/CR_1/db_CR_1/lab_3s/lab_3s.sv}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/Course\ project/Part\ 1/CR_1/db_CR_1/lab_3s/lab_2s {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/Course project/Part 1/CR_1/db_CR_1/lab_3s/lab_2s/ss_cntr.sv}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/Course\ project/Part\ 1/CR_1/db_CR_1/lab_3s/lab_2s {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/Course project/Part 1/CR_1/db_CR_1/lab_3s/lab_2s/rst_rg.sv}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/Course\ project/Part\ 1/CR_1/db_CR_1/lab_3s/lab_2s {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/Course project/Part 1/CR_1/db_CR_1/lab_3s/lab_2s/cnt_div.sv}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/Course\ project/Part\ 1/CR_1/db_CR_1/lab_3s/lab_2s {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/Course project/Part 1/CR_1/db_CR_1/lab_3s/lab_2s/d_rg.sv}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/Course\ project/Part\ 1/CR_1/db_CR_1/lab_3s/lab_2s {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/Course project/Part 1/CR_1/db_CR_1/lab_3s/lab_2s/fsm.sv}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/Course\ project/Part\ 1/CR_1/db_CR_1/lab_3s/lab_2s {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/Course project/Part 1/CR_1/db_CR_1/lab_3s/lab_2s/mux.sv}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/Course\ project/Part\ 1/CR_1/db_CR_1/lab_3s/lab_2s {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/Course project/Part 1/CR_1/db_CR_1/lab_3s/lab_2s/b2ss.sv}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/Course\ project/Part\ 1/CR_1/db_CR_1/lab_3s/lab_2s {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/Course project/Part 1/CR_1/db_CR_1/lab_3s/lab_2s/ss_rg.sv}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/Course\ project/Part\ 1/CR_1/db_CR_1/lab_3s/lab_2s {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/Course project/Part 1/CR_1/db_CR_1/lab_3s/lab_2s/dig_rg.sv}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/Course\ project/Part\ 1/CR_1/db_CR_1/lab_3s {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/Course project/Part 1/CR_1/db_CR_1/lab_3s/b2bd_rom.sv}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/Course\ project/Part\ 1/CR_1/db_CR_1 {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/Course project/Part 1/CR_1/db_CR_1/gen.sv}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/Course\ project/Part\ 1/CR_1/db_CR_1 {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/Course project/Part 1/CR_1/db_CR_1/CR_1.sv}
vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/Course\ project/Part\ 1/CR_1 {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/Course project/Part 1/CR_1/LFSR_8_7_6_4_3_2_1_F.sv}

vlog -sv -work work +incdir+D:/Users/Legion/Quartus\ and\ Verilog/Verilog/Third\ year/6th\ semester/labs/Course\ project/Part\ 1/CR_1/db_CR_1 {D:/Users/Legion/Quartus and Verilog/Verilog/Third year/6th semester/labs/Course project/Part 1/CR_1/db_CR_1/CR_1_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_CR_1

add wave *
view structure
view signals
run -all
