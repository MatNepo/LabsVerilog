onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_LFSR_8764321_F/CLK
add wave -noupdate /tb_LFSR_8764321_F/RST
add wave -noupdate /tb_LFSR_8764321_F/ENA
add wave -noupdate -format Analog-Step -height 74 -max 125.99999999999999 -min -128.0 /tb_LFSR_8764321_F/LFSR_out
add wave -noupdate /tb_LFSR_8764321_F/LFSR_CYCLE
add wave -noupdate -radix unsigned /tb_LFSR_8764321_F/CNT_int
add wave -noupdate /tb_LFSR_8764321_F/LFSR_out_start
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1370 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 214
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
WaveRestoreZoom {0 ns} {2352 ns}
