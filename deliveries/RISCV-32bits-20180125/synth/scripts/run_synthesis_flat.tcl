source ../scripts/define_variables.tcl

define_design_lib $LIBRARY_NAME -path ../libs_synth/$LIBRARY_NAME

analyze -library $LIBRARY_NAME -format vhdl $VHDL_FILES 

elaborate ${DESIGN_NAME} -architecture $ARCHI_TOP_NAME -library $LIBRARY_NAME

source ../scripts/top_num.sdc

set_operating_conditions -library c35_CORELIB_TYP WORST

compile -exact_map -area_effort high -ungroup_all

write_sdf ../results/${DESIGN_NAME}_flat.sdf
write -format ddc -hierarchy -output ../results/${DESIGN_NAME}_flat.ddc

#Genere la netlist au format VHDL
write -hierarchy -format vhdl -output ../results/${DESIGN_NAME}_flat.vhd
write -hierarchy -format verilog -output ../results/${DESIGN_NAME}_flat.v		

report_timing -nworst 10	> ../log/${DESIGN_NAME}_flat.timing.log
report_area					> ../log/${DESIGN_NAME}_flat.area.log
report_power				> ../log/${DESIGN_NAME}_flat.power.log
report_cell					> ../log/${DESIGN_NAME}_flat.cell.log
report_clock				> ../log/${DESIGN_NAME}_flat.clock.log
report_qor					> ../log/${DESIGN_NAME}_flat.qor.log

quit

