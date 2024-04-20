onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider -height 20 Exported
add wave -noupdate /tb_lab_PD4_top/clk
add wave -noupdate /tb_lab_PD4_top/reset
add wave -noupdate -radix unsigned /tb_lab_PD4_top/data_d
add wave -noupdate -radix unsigned /tb_lab_PD4_top/d_slave
add wave -noupdate -radix unsigned /tb_lab_PD4_top/dd_slave
add wave -noupdate -radix unsigned /tb_lab_PD4_top/def_slave
add wave -noupdate -divider -height 20 my_master
add wave -noupdate -radix unsigned /tb_lab_PD4_top/Lab4_sys_top_inst/Lab4_sys_inst/my_master/avm_m0_address
add wave -noupdate -radix unsigned /tb_lab_PD4_top/Lab4_sys_top_inst/Lab4_sys_inst/my_master/avm_m0_writedata
add wave -noupdate /tb_lab_PD4_top/Lab4_sys_top_inst/Lab4_sys_inst/my_master/avm_m0_write
add wave -noupdate -divider -height 20 my_slave_1
add wave -noupdate -radix unsigned /tb_lab_PD4_top/Lab4_sys_top_inst/Lab4_sys_inst/my_slave_1/avs_s0_writedata
add wave -noupdate /tb_lab_PD4_top/Lab4_sys_top_inst/Lab4_sys_inst/my_slave_1/avs_s0_write
add wave -noupdate -radix unsigned /tb_lab_PD4_top/Lab4_sys_top_inst/Lab4_sys_inst/my_slave_1/coe_s0_Dout
add wave -noupdate -divider -height 20 my_slave_2
add wave -noupdate -radix unsigned /tb_lab_PD4_top/Lab4_sys_top_inst/Lab4_sys_inst/my_slave_2/avs_s0_writedata
add wave -noupdate /tb_lab_PD4_top/Lab4_sys_top_inst/Lab4_sys_inst/my_slave_2/avs_s0_write
add wave -noupdate -radix unsigned /tb_lab_PD4_top/Lab4_sys_top_inst/Lab4_sys_inst/my_slave_2/coe_s0_Dout
add wave -noupdate -divider -height 20 my_Dslave
add wave -noupdate -radix unsigned /tb_lab_PD4_top/Lab4_sys_top_inst/Lab4_sys_inst/my_dslave/avs_s0_writedata
add wave -noupdate /tb_lab_PD4_top/Lab4_sys_top_inst/Lab4_sys_inst/my_dslave/avs_s0_write
add wave -noupdate -radix unsigned /tb_lab_PD4_top/Lab4_sys_top_inst/Lab4_sys_inst/my_dslave/coe_s0_Dout
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Записалось 255 чисел в writedata мастера, отсчёт начался с 0} {20050000 ps} 1} {{Было записано 256 адресов => отсчёт начинается с самого начала} {20530000 ps} 1} {{Запись числа 7 по адресу 1 в slave_1} {20610000 ps} 1} {{Запись числа 8 по адресу 2 в slave_2} {20690000 ps} 1} {{Значение счётчика Dslave + 1 (255 + 1 = 0)} {20770000 ps} 1} {{На def_slave поступило значение = 0} {20790000 ps} 1}
quietly wave cursor active 0
configure wave -namecolwidth 462
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
WaveRestoreZoom {20082998 ps} {20837737 ps}
