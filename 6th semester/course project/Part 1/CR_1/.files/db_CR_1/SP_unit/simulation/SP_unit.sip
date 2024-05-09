set_global_assignment -entity "SP_unit" -library "lib_SP_unit" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "SP_unit" -library "lib_SP_unit" -name IP_TOOL_VERSION "18.1"
set_global_assignment -entity "SP_unit" -library "lib_SP_unit" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_SP_unit" -name SPD_FILE [file join $::quartus(sip_path) "../SP_unit.spd"]
set_global_assignment -library "lib_SP_unit" -name MISC_FILE [file join $::quartus(sip_path) "../../SP_unit.qsys"]

set_global_assignment -library "lib_SP_unit" -name MISC_FILE [file join $::quartus(sip_path) "SP_unit.v"]
set_global_assignment -library "lib_SP_unit" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altsource_probe.v"]
