onerror {quit -code 1}
source "/home/gachetp/Projects/RISC-V-Core-32-bits/rv32i_pipeline/design/vunit_out/test_output/LIB_PIPELINE_BENCH.tb_interactivedemo.all_a2419a2458684d576b23ba1cd9f5b6620da52e5e/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
