from os.path import join, dirname
from vunit import VUnit

ui = VUnit.from_argv()
ui.add_osvvm()

src_path = join(dirname(__file__), "")

core_lib = ui.add_library("LIB_CORE")
core_lib.add_source_files(join(src_path, "vhd", "*.vhd"))

tb_core_lib = ui.add_library("LIB_CORE_BENCH")
tb_core_lib.add_source_files(join(src_path, "bench", "*.vhd"))

ui.main()
