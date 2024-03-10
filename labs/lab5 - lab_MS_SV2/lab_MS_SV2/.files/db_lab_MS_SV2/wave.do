onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_lab_MS_SV2/front_door
add wave -noupdate /tb_lab_MS_SV2/rear_door
add wave -noupdate /tb_lab_MS_SV2/window
add wave -noupdate /tb_lab_MS_SV2/clk
add wave -noupdate /tb_lab_MS_SV2/reset
add wave -noupdate /tb_lab_MS_SV2/ENA
add wave -noupdate -expand /tb_lab_MS_SV2/keypad
add wave -noupdate /tb_lab_MS_SV2/alarm_siren
add wave -noupdate /tb_lab_MS_SV2/is_armed
add wave -noupdate /tb_lab_MS_SV2/is_wait_delay
add wave -noupdate /tb_lab_MS_SV2/u_lab_MS_SV2/curr_state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors
quietly wave cursor active 0
configure wave -namecolwidth 258
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
WaveRestoreZoom {0 ps} {1806 ns}
