onerror {quit -code 1}
source "/tp/xph3app/xph3app606/RISC-V-Core-32-bits/rv32i_pipeline/design/vunit_out/test_output/LIB_PIPELINE_BENCH.tb_fetch.all_0dcd4905659bd441d8f7d4b4b8b19502951ce4f2/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
