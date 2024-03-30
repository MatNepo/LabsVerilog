set_global_assignment -entity "lab_PD2" -library "lib_lab_PD2" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "lab_PD2" -library "lib_lab_PD2" -name IP_TOOL_VERSION "20.1"
set_global_assignment -entity "lab_PD2" -library "lib_lab_PD2" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_lab_PD2" -name SPD_FILE [file join $::quartus(sip_path) "../lab_PD2.spd"]
set_global_assignment -library "lib_lab_PD2" -name MISC_FILE [file join $::quartus(sip_path) "../../lab_PD2.qsys"]

set_global_assignment -library "lib_lab_PD2" -name MISC_FILE [file join $::quartus(sip_path) "lab_PD2.v"]
set_global_assignment -library "lib_lab_PD2" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_avalon_sc_fifo.v"]
set_global_assignment -library "lib_lab_PD2" -name MISC_FILE [file join $::quartus(sip_path) "submodules/MyST_source.sv"]
set_global_assignment -library "lib_lab_PD2" -name MISC_FILE [file join $::quartus(sip_path) "submodules/MyST_sink.sv"]
