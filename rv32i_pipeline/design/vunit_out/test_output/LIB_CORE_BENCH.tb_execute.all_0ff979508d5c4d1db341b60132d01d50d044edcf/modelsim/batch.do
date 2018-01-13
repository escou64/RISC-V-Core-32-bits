onerror {quit -code 1}
source "/home/gachetp/Projects/RISC-V-Core-32-bits/rv32i_pipeline/design/vunit_out/test_output/LIB_CORE_BENCH.tb_execute.all_0ff979508d5c4d1db341b60132d01d50d044edcf/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
