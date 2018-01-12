onerror {quit -code 1}
source "/home/escou64/Projects/RISC-V-Core-32-bits/rv32i_pipeline/design/vunit_out/test_output/LIB_CORE_BENCH.tb_alu.all_6ef7f5095133df80d8c0801adac8c73c6f781a1e/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
