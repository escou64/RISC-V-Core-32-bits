onerror {quit -code 1}
source "/tp/xph3app/xph3app606/RISC-V-Core-32-bits/rv32i_pipeline/design/vunit_out/test_output/LIB_PIPELINE_BENCH.tb_memory_access.all_1a2cef00fa7baacf013e65b088f9e6a0b558caad/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
