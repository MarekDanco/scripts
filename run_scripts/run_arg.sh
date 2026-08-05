#!/bin/bash
#
# File:  run_arg.sh
# Author:  mikolas
# Created on:  Thu Dec 12 13:54:52 WET 2019
# Copyright (C) 2019, Mikolas Janota
#
if [[ $# -le 1 ]] ; then
    echo "Usage: $0 <solver_dir> <instance_dir/instance>"
    exit 1
fi

source run_setting

solver_dir="$1"
instance="$2"
shift
shift
instance_nm=`basename "${instance}"`
instance_dir=`dirname "${instance}"`
instance_full=`pwd`/"${instance}"
base_dir=`pwd`
w_clean=${base_dir}/clean_w_file.sh
opt_string=`sed -e 's/ /_/g' <<<"$*"`
# echo 'opt_string:' ${opt_string}
log_dir="${base_dir}/logs/${instance_dir}_${tm}_${mem}_${solver_dir}${opt_string}"

mkdir -p ${log_dir}
w_file=${log_dir}/${instance_nm}.w

if [ -f ${w_file} ]
then
  if grep -q -e '^CPU user time ' ${w_file}
  then
	  echo "Already done, skipping" ${instance}
	  exit 0
  fi
fi
# mkdir ${o}
# cp -r ${solver_dir} ${o}
# cd "${o}/${solver_dir}"
cd "${solver_dir}"
runsolver\
    --vsize-limit ${mem} -C ${tm} -W ${wtm} -d 10 \
    -w ${w_file} \
    2>${log_dir}/${instance_nm}.err \
    ./run $* ${instance_full} \
    >${log_dir}/${instance_nm}.sol
${w_clean} ${w_file}
# rm -rf ${o}
