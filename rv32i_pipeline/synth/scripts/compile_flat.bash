#!/bin/bash

##################################################
#
#			CONFIGURATION FOR COMPILATION
#		(ModelSim)
##################################################

if [ "$#" -eq 1 ]
then
	CHOICE_COMPIL=$1											# The first parameter if the bench must be compiled
																	#		3 choices: "design", "bench" or "all"
else
	CHOICE_COMPIL="all"											# By default, Benches and Design Files are compiled
fi

PROJECT_PATH="/tp/xph3app/xph3app606/RISC-V-Core-32-bits/rv32i_pipeline/synth"		# Path of the Project Directory
LIB_NAME="LIB_PIPELINE"													# Name of the Library 
#VHDL_FILES=`ls -l vhd/ | awk {'print$9'} | grep .vhd`
																	# List of the different VHDL Files describing the design
VHDL_FILES="	RISCV_CORE_CONFIG.vhd
				pipeline_flat.vhd"

																	# List of the different VHDL Files used for the bench
BENCH_FILES="	RISCV_CORE_CONFIG_BENCH.vhd
				pipeline_bench.vhd
				finaldemo_bench.vhd"									
OPT_VCOM="+acc -work" #+acc											# List of the different options of ModelSim used for Compilation
LOG_FILE="mylog.log"												# Name of the log file

##################################################
#
#				DESIGN COMPILATION
#		(ModelSim)
##################################################
echo ""																	> ${PROJECT_PATH}/log/${LOG_FILE}
if [ "$CHOICE_COMPIL" = "design" ] || [ "$CHOICE_COMPIL" = "all" ]
then
	if [ -d "${PROJECT_PATH}/libs/${LIB_NAME}" ] 
	then
		vdel -lib ${PROJECT_PATH}/libs/${LIB_NAME} -all					>> ${PROJECT_PATH}/log/${LOG_FILE}	# Deletes the old version of library
	fi
	vlib ${PROJECT_PATH}/libs/${LIB_NAME}								>> ${PROJECT_PATH}/log/${LOG_FILE}	# Creates a new library
	vmap ${LIB_NAME} ${PROJECT_PATH}/libs/${LIB_NAME}					>> ${PROJECT_PATH}/log/${LOG_FILE}	# Creates a link between the name of the library and its path

	for file in ${VHDL_FILES}
	do
		vcom ${OPT_VCOM} ${LIB_NAME} ${PROJECT_PATH}/netlist/${file}		>> ${PROJECT_PATH}/log/${LOG_FILE}	# Compiles all the VHDL files contained on the VHDL_FILES variable
																									# Uses the options on OPT_VCOM variable
	done
fi
##################################################
#
#				BENCH COMPILATION
#		(ModelSim)
##################################################i

if [ "$CHOICE_COMPIL" = "bench" ] || [ "$CHOICE_COMPIL" = "all" ]
then
	if [ -d "${PROJECT_PATH}/libs/${LIB_NAME}_BENCH" ] 
	then
		vdel -lib ${PROJECT_PATH}/libs/${LIB_NAME}_BENCH -all		>> ${PROJECT_PATH}/log/${LOG_FILE}	# Delete the old version of library
	fi
	vlib ${PROJECT_PATH}/libs/${LIB_NAME}_BENCH						>> ${PROJECT_PATH}/log/${LOG_FILE}	# Create a new library
	vmap ${LIB_NAME}_BENCH ${PROJECT_PATH}/libs/${LIB_NAME}_BENCH	>> ${PROJECT_PATH}/log/${LOG_FILE}	# Create a link between the name of the library and its path

	for bench in ${BENCH_FILES}
	do
		vcom ${OPT_VCOM} ${LIB_NAME}_BENCH ${PROJECT_PATH}/bench/${bench}	>> ${PROJECT_PATH}/log/${LOG_FILE}	# Compile all the VHDL files contained on the VHDL_FILES variable
																												# Use the options on OPT_VCOM variable
	done
fi

##################################################
#
#				LOG FILE PROCESSING
#		
##################################################
ERRORS=`cat ${PROJECT_PATH}/log/${LOG_FILE} | grep Error | wc -l`
WARNINGS=`cat ${PROJECT_PATH}/log/${LOG_FILE} | grep Warning | wc -l`

echo ""										>> ${PROJECT_PATH}/log/${LOG_FILE}
echo "Total Errors :	${ERRORS}"			>> ${PROJECT_PATH}/log/${LOG_FILE}
echo "Total Warnings :	${WARNINGS}"		>> ${PROJECT_PATH}/log/${LOG_FILE}

cat ${PROJECT_PATH}/log/${LOG_FILE}
