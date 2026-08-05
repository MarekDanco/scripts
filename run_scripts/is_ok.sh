#!/bin/bash
#
# File:  is_ok.sh
# Author:  mikolas
# Created on:  Wed Oct 30 14:14:55 WET 2019
# Copyright (C) 2019, Mikolas Janota
#
if [[ $# < 2 ]]; then
    echo "Usage: $0 instance solution"
    exit 100
fi

if grep -q -w -e '^sat' -e '% SZS status Satisfiable' $2
then
	echo sat
	exit 0
fi

if grep -q -w -e '^unsat'  -e '% SZS status Unsatisfiable' $2
then
	echo unsat
	exit 0
fi

exit 1
