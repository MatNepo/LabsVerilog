transcript on
if ![file isdirectory lab_PD2_iputf_libs] {
	file mkdir lab_PD2_iputf_libs
}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

###### Libraries for IPUTF cores 
vlib lab_PD2_iputf_libs/sc_fifo
vmap sc_fifo ./lab_PD2_iputf_libs/sc_fifo
vlib lab_PD2_iputf_libs/MyST_source
vmap MyST_source ./lab_PD2_iputf_libs/MyST_source
vlib lab_PD2_iputf_libs/MyST_sink
vmap MyST_sink ./lab_PD2_iputf_libs/MyST_sink
###### End libraries for IPUTF cores 
###### MIF file copy and HDL compilation commands for IPUTF cores 


vlog     "C:/Intel_trn/Q_PD/lab_PD2/lab_PD2/simulation/submodules/altera_avalon_sc_fifo.v" -work sc_fifo    
vlog -sv "C:/Intel_trn/Q_PD/lab_PD2/lab_PD2/simulation/submodules/MyST_source.sv"          -work MyST_source
vlog -sv "C:/Intel_trn/Q_PD/lab_PD2/lab_PD2/simulation/submodules/MyST_sink.sv"            -work MyST_sink  
vlog     "C:/Intel_trn/Q_PD/lab_PD2/lab_PD2/simulation/lab_PD2.v"                                           

vlog -sv -work work +incdir+C:/Intel_trn/Q_PD/lab_PD2 {C:/Intel_trn/Q_PD/lab_PD2/lab_PD2_top.sv}

vlog -sv -work work +incdir+C:/Intel_trn/Q_PD/lab_PD2 {C:/Intel_trn/Q_PD/lab_PD2/tb_lab_PD2_top.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -L sc_fifo -L MyST_source -L MyST_sink -voptargs="+acc"  tb_lab_PD2_top

add wave *
view structure
view signals
run -all
