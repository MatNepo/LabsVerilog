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
WaveRestoreCursors {{Убрали сигнал reset} {20000 ps} 1} {{master выставляет адрес 0 и пытаеься записть туда 6 (данные)} {50000 ps} 1} {{slave 1 и 2 не распознали сигнал (write=0), поэтому этот сигнал записался в Dslave} {70000 ps} 1} {{Адрес 1 распознался slave_1 (write=o) => сигнал пренадлежит slave_1} {130000 ps} 1} {{В slave_1 произошла запись данных, которые были на шине writedata (7)} {150000 ps} 1} {{slave_1 не распознал, slave_2 распознал, поэтому сигнал принадлежит slave_2} {210000 ps} 1} {{В slave_2 произошла запись данных, которые были на шине writedata (8)} {230000 ps} 1} {{Аналогично 1-му значению, Dslave распознал сигнал} {290000 ps} 1} {{Происходит запись в Dslave, дальше все сигналы записывваются аналогично этому} {310000 ps} 1}
quietly wave cursor active 0
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
WaveRestoreZoom {0 ps} {756 ns}
