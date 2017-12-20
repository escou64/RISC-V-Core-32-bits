read_file -type vhdl {../vhd/alu.vhd ../vhd/core.vhd ../vhd/counter_calculation.vhd ../vhd/decode.vhd ../vhd/execute.vhd ../vhd/fetch.vhd ../vhd/memory_access.vhd ../vhd/registerfile.vhd ../vhd/RISCV_CORE_CONFIG.vhd ../vhd/writeback.vhd}

current_goal Design_Read -alltop

set_option lib LIB_CORE ./LIB_CORE 
set_option hdllibdu true

precompile_design ../vhd/* -lib LIB_CORE -path ./LIB_CORE

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
