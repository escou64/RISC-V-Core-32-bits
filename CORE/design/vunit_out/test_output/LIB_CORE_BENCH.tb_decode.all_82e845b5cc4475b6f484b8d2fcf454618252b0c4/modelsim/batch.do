onerror {quit -code 1}
source "/tp/xph3app/xph3app606/RISC-V-Core-32-bits/CORE/design/vunit_out/test_output/LIB_CORE_BENCH.tb_decode.all_82e845b5cc4475b6f484b8d2fcf454618252b0c4/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
