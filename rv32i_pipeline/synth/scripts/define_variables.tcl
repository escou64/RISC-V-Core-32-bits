
set PROJECT_PATH "/tp/xph3app/xph3app606/RISC-V-Core-32-bits/rv32i_pipeline"
set WORK_PATH "synth/work"

set VHDL_FILES "	../../design/vhd/RISCV_CORE_CONFIG.vhd \
					../../design/vhd/pc.vhd \
					../../design/vhd/fetch.vhd \
					../../design/vhd/cache_controller.vhd \
					../../design/vhd/decode.vhd \
					../../design/vhd/reg_integer.vhd \
					../../design/vhd/alu.vhd \
					../../design/vhd/execute.vhd \
					../../design/vhd/memory_access.vhd \
					../../design/vhd/writeback.vhd \
					../../design/vhd/pipeline.vhd"

set DESIGN_NAME pipeline
set ARCHI_TOP_NAME pipeline_arch
set LIBRARY_NAME LIB_PIPELINE
