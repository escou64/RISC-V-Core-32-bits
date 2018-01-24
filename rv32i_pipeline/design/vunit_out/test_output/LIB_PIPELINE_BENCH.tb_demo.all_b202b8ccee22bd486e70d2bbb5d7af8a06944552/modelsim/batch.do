onerror {quit -code 1}
source "/media/data/Projects/RISC-V-Core-32-bits/rv32i_pipeline/design/vunit_out/test_output/LIB_PIPELINE_BENCH.tb_demo.all_b202b8ccee22bd486e70d2bbb5d7af8a06944552/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
