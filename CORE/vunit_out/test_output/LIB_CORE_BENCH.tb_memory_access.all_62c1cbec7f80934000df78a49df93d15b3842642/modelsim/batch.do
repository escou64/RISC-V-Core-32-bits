onerror {quit -code 1}
source "/home/escou64/Projects/RISC-V-Core-32-bits/CORE/vunit_out/test_output/LIB_CORE_BENCH.tb_memory_access.all_62c1cbec7f80934000df78a49df93d15b3842642/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
