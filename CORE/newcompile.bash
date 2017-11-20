#!/bin/bash

##################################################
#
#			CONFIGURATION FOR COMPILATION
#		(ModelSim)
##################################################

if [ "$#" -eq 1 ]
then
	BENCH_COMPILATION=$1																			# The first parameter if the bench must be compiled
																									#		2 choices: true or false
else
	BENCH_COMPILATION=true																			# By default, Benches and Design Files are compiled
fi

PROJECT_PATH="/tp/xph2app/xph2app001/CSI2A_Project"													# Path of the Project Directory
LIB_NAME="LIB_MSK_MODULATOR"																		# Name of the Library 
#VHDL_FILES=`ls -l vhd/ | awk {'print$9'} | grep .vhd`
																									# List of the different VHDL Files describing the design
VHDL_FILES="	rom.vhd												
				lut_i.vhd 
				lut_q.vhd 
				counter.vhd 
				encoder.vhd 
				converter_s2p.vhd 
				msk_modulator.vhd"
BENCH_FILES="msk_modulator_bench.vhd"																# List of the different VHDL Files used for the bench
OPT_VCOM="-work" #+acc																				# List of the different options of ModelSim used for Compilation
LOG_FILE="mylog.log"																				# Name of the log file

##################################################
#
#				DESIGN COMPILATION
#		(ModelSim)
##################################################

if [ -d "${PROJECT_PATH}/libs/${LIB_NAME}" ] 
then
	vdel -lib ${PROJECT_PATH}/libs/${LIB_NAME} -all					> ${PROJECT_PATH}/${LOG_FILE}	# Deletes the old version of library
fi
vlib ${PROJECT_PATH}/libs/${LIB_NAME}								>> ${PROJECT_PATH}/${LOG_FILE}	# Creates a new library
vmap ${LIB_NAME} ${PROJECT_PATH}/libs/${LIB_NAME}					>> ${PROJECT_PATH}/${LOG_FILE}	# Creates a link between the name of the library and its path

for file in ${VHDL_FILES}
do
	vcom ${OPT_VCOM} ${LIB_NAME} ${PROJECT_PATH}/vhd/${file}		>> ${PROJECT_PATH}/${LOG_FILE}	# Compiles all the VHDL files contained on the VHDL_FILES variable
																									# Uses the options on OPT_VCOM variable
done

##################################################
#
#				BENCH COMPILATION
#		(ModelSim)
##################################################i

if [ ${BENCH_COMPILATION} ]
then
	if [ -d "${PROJECT_PATH}/libs/${LIB_NAME}_BENCH" ] 
	then
		vdel -lib ${PROJECT_PATH}/libs/${LIB_NAME}_BENCH -all		>> ${PROJECT_PATH}/${LOG_FILE}	# Delete the old version of library
	fi
	vlib ${PROJECT_PATH}/libs/${LIB_NAME}_BENCH						>> ${PROJECT_PATH}/${LOG_FILE}	# Create a new library
	vmap ${LIB_NAME}_BENCH ${PROJECT_PATH}/libs/${LIB_NAME}_BENCH	>> ${PROJECT_PATH}/${LOG_FILE}	# Create a link between the name of the library and its path

	for bench in ${BENCH_FILES}
	do
		vcom ${OPT_VCOM} ${LIB_NAME} ${PROJECT_PATH}/bench/${bench}	>> ${PROJECT_PATH}/${LOG_FILE}	# Compile all the VHDL files contained on the VHDL_FILES variable
																									# Use the options on OPT_VCOM variable
	done
fi

##################################################
#
#				LOG FILE PROCESSING
#		
##################################################
ERRORS=`cat ${PROJECT_PATH}/${LOG_FILE} | grep Error`
ERRORSCOUNTER=`echo ${ERRORS} | wc -l`
WARNINGS=`cat ${PROJECT_PATH}/${LOG_FILE} | grep Warning`
WARNINGSCOUNTER=`echo ${WARNINGS} | wc -l`

echo ""										>> ${PROJECT_PATH}/${LOG_FILE}
echo "Total Errors :	${ERRORSCOUNTER}"	>> ${PROJECT_PATH}/${LOG_FILE}
echo "Total Warningss :	${WARNINGSCOUNTER}"	>> ${PROJECT_PATH}/${LOG_FILE}

cat ${PROJECT_PATH}/${LOG_FILE}
