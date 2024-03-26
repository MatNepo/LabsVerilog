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
WaveRestoreCursors {{Cursor 1} {1253664 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 515
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
WaveRestoreZoom {0 ps} {4725 ns}
