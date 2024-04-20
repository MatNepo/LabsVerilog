proc add_wave_zoom {stime num} {
echo "Bookmarking wave. Bookmark is bk$num"
bookmark add wave "bk$num" "[expr $stime - 100] [expr $stime + 50]" 0
}

add wave -decimal count
add wave clk
add wave reset

when {clk'event and clk="1"} {
if {[examine -decimal count]== "27"} {
echo "Count is [exa -decimal count]"
add_wave_zoom $now 1
} elseif {[examine -decimal count]== "47"} {
echo "Count is [exa -decimal count]"
add_wave_zoom $now 2
}
}