; # VARIABLES OF CONFIGURATION
set VHDL_FILES {	../design/vhd/alu.vhd
					../design/vhd/core.vhd
					../design/vhd/counter_calculation.vhd
					../design/vhd/decode.vhd
					../design/vhd/execute.vhd
					../design/vhd/fetch.vhd
					../design/vhd/memory_access.vhd
					../design/vhd/registerfile.vhd
					../design/vhd/RISCV_CORE_CONFIG.vhd
					../design/vhd/writeback.vhd}

set LIBRARY_NAME	LIB_CORE
set LIBRARY_PATH	./libs/LIB_CORE

; # END OF THE CONFIGURATION PART

read_file -type vhdl $VHDL_FILES

current_goal Design_Read -alltop

set_option lib $LIBRARY_NAME $LIBRARY_PATH
set_option hdllibdu true

precompile_design $VHDL_FILES -lib $LIBRARY_NAME -path $LIBRARY_PATH

compile_design -force

current_goal lint/lint_rtl -alltop
run_goal
current_goal lint/lint_abstract -alltop
run_goal
current_goal adv_lint/adv_lint_struct -alltop
run_goal
current_goal adv_lint/adv_lint_verify -alltop
run_goal

current_goal lint/lint_rtl -alltop
