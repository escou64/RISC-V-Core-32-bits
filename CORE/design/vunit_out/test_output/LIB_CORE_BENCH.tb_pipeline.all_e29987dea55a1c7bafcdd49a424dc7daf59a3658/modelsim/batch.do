onerror {quit -code 1}
source "/media/data/Projects/RISC-V-Core-32-bits/CORE/design/vunit_out/test_output/LIB_CORE_BENCH.tb_pipeline.all_e29987dea55a1c7bafcdd49a424dc7daf59a3658/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
