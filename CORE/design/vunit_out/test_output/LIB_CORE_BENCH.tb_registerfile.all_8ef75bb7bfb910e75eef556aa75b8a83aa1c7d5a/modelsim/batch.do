onerror {quit -code 1}
source "/tp/xph3app/xph3app606/RISC-V-Core-32-bits/CORE/design/vunit_out/test_output/LIB_CORE_BENCH.tb_registerfile.all_8ef75bb7bfb910e75eef556aa75b8a83aa1c7d5a/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
