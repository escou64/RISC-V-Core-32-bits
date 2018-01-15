onerror {quit -code 1}
source "/tp/xph3app/xph3app606/RISC-V-Core-32-bits/rv32i_pipeline/design/vunit_out/test_output/LIB_PIPELINE_BENCH.tb_writeback.all_328af63cfde7f6332e479c317871af30954f7203/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
