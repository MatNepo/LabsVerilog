onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider -height 20 Exported
add wave -noupdate /tb_lab_PD4_top/clk
add wave -noupdate /tb_lab_PD4_top/reset
add wave -noupdate -radix unsigned /tb_lab_PD4_top/data_d
add wave -noupdate -radix unsigned /tb_lab_PD4_top/dd_slave
add wave -noupdate -radix unsigned /tb_lab_PD4_top/d_slave
add wave -noupdate -radix unsigned /tb_lab_PD4_top/def_slave
add wave -noupdate -divider -height 20 my_master
add wave -noupdate -radix unsigned /tb_lab_PD4_top/Lab4_sys_top_inst/Lab4_sys_inst/my_master_0/avm_m0_address
add wave -noupdate -radix unsigned /tb_lab_PD4_top/Lab4_sys_top_inst/Lab4_sys_inst/my_master_0/avm_m0_writedata
add wave -noupdate /tb_lab_PD4_top/Lab4_sys_top_inst/Lab4_sys_inst/my_master_0/avm_m0_write
add wave -noupdate -divider -height 20 my_slave_0
add wave -noupdate -radix unsigned /tb_lab_PD4_top/Lab4_sys_top_inst/Lab4_sys_inst/my_slave_0/avs_s0_writedata
add wave -noupdate /tb_lab_PD4_top/Lab4_sys_top_inst/Lab4_sys_inst/my_slave_0/avs_s0_write
add wave -noupdate -radix unsigned /tb_lab_PD4_top/Lab4_sys_top_inst/Lab4_sys_inst/my_slave_0/coe_s0_Dout
add wave -noupdate -divider -height 20 my_slave_1
add wave -noupdate -radix unsigned /tb_lab_PD4_top/Lab4_sys_top_inst/Lab4_sys_inst/my_slave_1/avs_s0_writedata
add wave -noupdate /tb_lab_PD4_top/Lab4_sys_top_inst/Lab4_sys_inst/my_slave_1/avs_s0_write
add wave -noupdate -radix unsigned /tb_lab_PD4_top/Lab4_sys_top_inst/Lab4_sys_inst/my_slave_1/coe_s0_Dout
add wave -noupdate -divider -height 20 my_Dslave
add wave -noupdate -radix unsigned /tb_lab_PD4_top/Lab4_sys_top_inst/Lab4_sys_inst/my_dslave_0/avs_s0_writedata
add wave -noupdate /tb_lab_PD4_top/Lab4_sys_top_inst/Lab4_sys_inst/my_dslave_0/avs_s0_write
add wave -noupdate -radix unsigned /tb_lab_PD4_top/Lab4_sys_top_inst/Lab4_sys_inst/my_dslave_0/coe_s0_Dout
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {182694 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 490
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits us
update
WaveRestoreZoom {0 ps} {4410 ns}
