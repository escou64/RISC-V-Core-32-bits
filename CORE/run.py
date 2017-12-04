from os.path import join, dirname
from vunit import VUnit

ui = VUnit.from_argv()
ui.add_osvvm()

src_path = join(dirname(__file__), "")

uart_lib = ui.add_library("LIB_CORE")
uart_lib.add_source_files(join(src_path, "vhd", "*.vhd"))

tb_uart_lib = ui.add_library("LIB_CORE_BENCH")
tb_uart_lib.add_source_files(join(src_path, "bench", "*.vhd"))

ui.main()
