onerror {quit -code 1}
source "/tp/xph3app/xph3app606/RISC-V-Core-32-bits/CORE/design/vunit_out/test_output/LIB_CORE_BENCH.tb_writeback.all_b3d2207b8988ca33e760a7f2034940039898decb/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
