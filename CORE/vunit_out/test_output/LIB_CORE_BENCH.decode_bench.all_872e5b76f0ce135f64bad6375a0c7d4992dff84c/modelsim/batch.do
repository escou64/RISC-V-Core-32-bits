onerror {quit -code 1}
source "/media/data/Projects/RISC-V-Core-32-bits/CORE/vunit_out/test_output/LIB_CORE_BENCH.decode_bench.all_872e5b76f0ce135f64bad6375a0c7d4992dff84c/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
