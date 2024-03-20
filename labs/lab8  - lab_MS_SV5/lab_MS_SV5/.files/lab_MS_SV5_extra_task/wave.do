onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_lab_MS_SV5/CLK
add wave -noupdate /tb_lab_MS_SV5/reset
add wave -noupdate /tb_lab_MS_SV5/UUT/UUT_master/fsm_MM
add wave -noupdate -radix unsigned /tb_lab_MS_SV5/UUT/bus/address
add wave -noupdate -radix unsigned /tb_lab_MS_SV5/UUT/bus/writedata
add wave -noupdate /tb_lab_MS_SV5/UUT/bus/write
add wave -noupdate -radix unsigned /tb_lab_MS_SV5/D_even
add wave -noupdate -radix unsigned /tb_lab_MS_SV5/D_odd
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {98652 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {0 ps} {336 ns}
