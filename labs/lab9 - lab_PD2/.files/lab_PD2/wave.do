onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider -height 20 {Exported I_O}
add wave -noupdate /tb_lab_PD2_top/clk
add wave -noupdate /tb_lab_PD2_top/reset
add wave -noupdate -radix unsigned /tb_lab_PD2_top/dout
add wave -noupdate -divider -height 20 ST_source
add wave -noupdate -radix unsigned /tb_lab_PD2_top/UUT/UUT/myst_source/cnt_int
add wave -noupdate -radix unsigned /tb_lab_PD2_top/UUT/UUT/myst_source_out0_data
add wave -noupdate /tb_lab_PD2_top/UUT/UUT/myst_source_out0_valid
add wave -noupdate /tb_lab_PD2_top/UUT/UUT/myst_source_out0_ready
add wave -noupdate -divider -height 20 FIFO
add wave -noupdate -radix unsigned /tb_lab_PD2_top/UUT/UUT/sc_fifo/in_data
add wave -noupdate /tb_lab_PD2_top/UUT/UUT/sc_fifo/in_valid
add wave -noupdate /tb_lab_PD2_top/UUT/UUT/sc_fifo/in_ready
add wave -noupdate -radix unsigned /tb_lab_PD2_top/UUT/UUT/sc_fifo_out_data
add wave -noupdate /tb_lab_PD2_top/UUT/UUT/sc_fifo_out_valid
add wave -noupdate /tb_lab_PD2_top/UUT/UUT/sc_fifo_out_ready
add wave -noupdate -divider -height 20 ST_sink
add wave -noupdate -radix unsigned /tb_lab_PD2_top/UUT/UUT/myst_sink/cnt_int
add wave -noupdate -radix unsigned /tb_lab_PD2_top/UUT/UUT/myst_sink/asi_in0_data
add wave -noupdate /tb_lab_PD2_top/UUT/UUT/myst_sink/asi_in0_valid
add wave -noupdate /tb_lab_PD2_top/UUT/UUT/myst_sink/asi_in0_ready
add wave -noupdate -divider -height 20 Conduit
add wave -noupdate -radix unsigned /tb_lab_PD2_top/UUT/UUT/myst_sink/coe_c0_Dout
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Начали поступать данные} {550000 ps} 1} {{Активируется сигнал in_valid, начинается считывание данных} {650000 ps} 1} {{На fifo_out поступают данные, которые были считаны с st_source data} {950000 ps} 1} {{Получено 4 элемента - сигнал st_source_valid становится равным 0} {1050000 ps} 1} {{fifo_out_ready = 1 -> данные готовы передаваться на Dout} {1350000 ps} 1} {{Данные начинают передаваться на Dout} {1450000 ps} 1} {{Данные больше не передаются (asi_in0_ready = 0), FIFO обнуляется} {1750000 ps} 1} {{Начало поступления нового набора данных, повторяются этапы, описанные до этого} {2250000 ps} 1}
quietly wave cursor active 8
configure wave -namecolwidth 509
configure wave -valuecolwidth 66
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
WaveRestoreZoom {52459 ps} {3271311 ps}
