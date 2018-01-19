#!/bin/bash
M_DATE=`date +%Y%m%d_%H%M`

cd ~/RISC-V-Core-32-bits/config/
source config_ASIC

cd ~/RISC-V-Core-32-bits/rv32i_pipeline/synth/work
dc_shell -f ../scripts/run_synthesis_hier.tcl > ../log/report_hier.log
dc_shell -f ../scripts/run_synthesis_flat.tcl > ../log/report_flat.log

grep Error ../log/report_hier.log	> ../log/errors_hier.log
grep Warning ../log/report_hier.log	> ../log/warnings_hier.log

grep Error ../log/report_flat.log	> ../log/errors_flat.log
grep Warning ../log/report_flat.log	> ../log/warnings_flat.log

cd ..

cp -R log log_${M_DATE}
cp -R results results_${M_DATE}
