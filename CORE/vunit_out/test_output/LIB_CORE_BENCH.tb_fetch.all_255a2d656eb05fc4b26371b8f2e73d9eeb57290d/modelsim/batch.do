onerror {quit -code 1}
source "/media/data/Projects/RISC-V-Core-32-bits/CORE/vunit_out/test_output/LIB_CORE_BENCH.tb_fetch.all_255a2d656eb05fc4b26371b8f2e73d9eeb57290d/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
