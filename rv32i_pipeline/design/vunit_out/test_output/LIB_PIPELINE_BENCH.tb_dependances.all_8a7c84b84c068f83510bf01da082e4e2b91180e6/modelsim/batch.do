onerror {quit -code 1}
source "/home/gachetp/Projects/RISC-V-Core-32-bits/rv32i_pipeline/design/vunit_out/test_output/LIB_PIPELINE_BENCH.tb_dependances.all_8a7c84b84c068f83510bf01da082e4e2b91180e6/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
