onerror {quit -code 1}
source "/home/escou64/Projects/RISC-V-Core-32-bits/rv32i_pipeline/design/vunit_out/test_output/LIB_PIPELINE_BENCH.tb_decode.all_acbf876bf0c6ebb9edb8a6394d5c41476351caad/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
