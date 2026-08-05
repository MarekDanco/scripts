#!/bin/bash
#
# Author:  mikolas
# Created on:  Sat Jul 29 15:58:22 WEST 2017
# Copyright (C) 2017, Mikolas Janota
#
if [[ $# < 1 ]]; then
    echo "Usage: $0 family"
    exit 100;
fi
output_root=${HOME}/public_html
mkdir -p $output_root

source run_setting

family=$1
family="${family%/}"
tables=""
log_prefix="logs/${family}_${tm}_${mem}_"
table_dir=tables/${family}_${tm}_${mem}
mkdir -p ${table_dir}

mkdir -p tables
for L in `ls -d ${log_prefix}*`; do
   solver=${L#$log_prefix}
   echo solver $solver
   table_file=${table_dir}/${solver}.tab
   done_table_file=${table_file}.done
   if [ ! -f ${done_table_file} ]
   then
	   # echo "./gen_tab.sh ${family} $L ${solver} to ${table_file}"
	   if ./gen_tab.sh ${family} $L ${solver} >${table_file}; then
		   echo + ${table_file} 'finished'
		   touch ${done_table_file}
     fi
   else
     echo + ${table_file} 'already done'
   fi
   tables="${tables} ${table_file}"
done
virtual_solver_table=${table_dir}/VBS.tab
# ./gen_vbs.py ${tables} >${virtual_solver_table}
# if [[ -f "${virtual_solver_table}" ]]
# then
#     tables="${tables} ${virtual_solver_table}"
# else
#     echo "cannot find ${virtual_solver_table}"
# fi
echo "./rd_tms.py ${tables}"

d=`pwd`
d=`basename $d`
odir=${output_root}/${d}/${family}_${tm}_${mem}
mkdir -p $odir
ofile=${odir}/smt_${tm}_${mem}_${family}.html
./rd_tms.py ${tables} >${ofile}
echo "output to ${ofile}"
scp ${ofile} dancomar@people:public_html/trash
