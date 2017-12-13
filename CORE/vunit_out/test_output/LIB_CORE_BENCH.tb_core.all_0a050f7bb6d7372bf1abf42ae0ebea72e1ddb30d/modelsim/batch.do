onerror {quit -code 1}
source "/home/escou64/Projects/RISC-V-Core-32-bits/CORE/vunit_out/test_output/LIB_CORE_BENCH.tb_core.all_0a050f7bb6d7372bf1abf42ae0ebea72e1ddb30d/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
