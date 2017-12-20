# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /tp/xph3app/xph3app606/RISC-V-Core-32-bits/CORE/synth/fpga_synth/fpga_synth.cache/wt [current_project]
set_property parent.project_path /tp/xph3app/xph3app606/RISC-V-Core-32-bits/CORE/synth/fpga_synth/fpga_synth.xpr [current_project]
set_property default_lib LIB_CORE [current_project]
set_property target_language VHDL [current_project]
set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
set_property ip_output_repo /tp/xph3app/xph3app606/RISC-V-Core-32-bits/CORE/synth/fpga_synth/fpga_synth.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library LIB_CORE {
  /tp/xph3app/xph3app606/RISC-V-Core-32-bits/CORE/design/vhd/RISCV_CORE_CONFIG.vhd
  /tp/xph3app/xph3app606/RISC-V-Core-32-bits/CORE/design/vhd/alu.vhd
  /tp/xph3app/xph3app606/RISC-V-Core-32-bits/CORE/design/vhd/counter_calculation.vhd
  /tp/xph3app/xph3app606/RISC-V-Core-32-bits/CORE/design/vhd/decode.vhd
  /tp/xph3app/xph3app606/RISC-V-Core-32-bits/CORE/design/vhd/execute.vhd
  /tp/xph3app/xph3app606/RISC-V-Core-32-bits/CORE/design/vhd/fetch.vhd
  /tp/xph3app/xph3app606/RISC-V-Core-32-bits/CORE/design/vhd/memory_access.vhd
  /tp/xph3app/xph3app606/RISC-V-Core-32-bits/CORE/design/vhd/registerfile.vhd
  /tp/xph3app/xph3app606/RISC-V-Core-32-bits/CORE/design/vhd/writeback.vhd
  /tp/xph3app/xph3app606/RISC-V-Core-32-bits/CORE/design/vhd/core.vhd
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}

synth_design -top core -part xc7z020clg484-1


write_checkpoint -force -noxdef core.dcp

catch { report_utilization -file core_utilization_synth.rpt -pb core_utilization_synth.pb }
