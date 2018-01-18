onerror {quit -code 1}
source "/home/escou64/Projects/RISC-V-Core-32-bits/rv32i_pipeline/design/vunit_out/test_output/LIB_PIPELINE_BENCH.tb_alu.all_c379f9c4821ba209c2f798a940dbde6c22569ce2/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
