onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_CR_1/CLK
add wave -noupdate /tb_CR_1/ENgen
add wave -noupdate /tb_CR_1/Enwrk
add wave -noupdate /tb_CR_1/RST
add wave -noupdate /tb_CR_1/ENraf
add wave -noupdate -radix unsigned /tb_CR_1/usedw
add wave -noupdate -radix unsigned /tb_CR_1/ss
add wave -noupdate -radix unsigned /tb_CR_1/dig
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {699311 ps} 0}
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
WaveRestoreZoom {0 ps} {735 ns}
