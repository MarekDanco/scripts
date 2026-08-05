#!/bin/bash
#
# File:  clean_w_file.sh
# Author:  mikolas
# Created on:  Tue Dec 3 14:30:35 WET 2019
# Copyright (C) 2019, Mikolas Janota
#
if [[ $# != 1 ]]; then
    echo "Usage: $0 wlogfile"
    exit 100;
fi

wlogfile=$1
tw=/tmp/_w_`cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 16 | head -n 1`

cat ${wlogfile} | grep -e '^Child status:' \
	-e '^Enforcing:' \
	-e '^command line:' \
	-e '^Real time (s):' \
	-e '^CPU time (s):' \
	-e '^CPU user time (s):' \
	-e '^CPU system time (s):' \
	-e '^CPU usage (%):' \
	-e '^Max. virtual memory (cumulated for all children) (KiB):' \
	>${tw}
/bin/mv ${tw} ${wlogfile}
