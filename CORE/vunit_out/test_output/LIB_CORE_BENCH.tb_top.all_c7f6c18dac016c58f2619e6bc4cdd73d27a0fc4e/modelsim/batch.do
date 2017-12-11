onerror {quit -code 1}
source "/media/data/Projects/RISC-V-Core-32-bits/CORE/vunit_out/test_output/LIB_CORE_BENCH.tb_top.all_c7f6c18dac016c58f2619e6bc4cdd73d27a0fc4e/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
