source ../scripts/define_variables.tcl

define_design_lib $LIBRARY_NAME -path ../libs_synth/$LIBRARY_NAME

analyze -library $LIBRARY_NAME -format vhdl $VHDL_FILES 

elaborate ${DESIGN_NAME} -architecture $ARCHI_TOP_NAME -library $LIBRARY_NAME

source ../scripts/top_num.sdc

set_operating_conditions -library c35_CORELIB_TYP WORST

compile -exact_map -area_effort high

write_sdf ../results/${DESIGN_NAME}_hier.sdf
write -format ddc -hierarchy -output ../results/${DESIGN_NAME}_hier.ddc

#Genere la netlist au format VHDL
write -hierarchy -format vhdl -output ../results/${DESIGN_NAME}_hier.vhd
write -hierarchy -format verilog -output ../results/${DESIGN_NAME}_hier.v		

report_timing -nworst 10	> ../log/${DESIGN_NAME}_hier.timing.log
report_area					> ../log/${DESIGN_NAME}_hier.area.log
report_power				> ../log/${DESIGN_NAME}_hier.power.log
report_cell					> ../log/${DESIGN_NAME}_hier.cell.log
report_clock				> ../log/${DESIGN_NAME}_hier.clock.log
report_qor					> ../log/${DESIGN_NAME}_hier.qor.log

quit

