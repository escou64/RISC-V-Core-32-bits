onerror {quit -code 1}
source "/media/data/Projects/RISC-V-Core-32-bits/CORE/design/vunit_out/test_output/LIB_CORE_BENCH.tb_demo.all_331e800f93b8cf9e769a7bf3cc8f509f3598d5be/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
