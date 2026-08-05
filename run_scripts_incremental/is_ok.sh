#!/bin/bash
#
# File:  is_ok.sh
# Author:  mikolas
# Created on:  Wed Oct 30 14:14:55 WET 2019
# Copyright (C) 2019, Mikolas Janota
#
# Incremental verdict: a run is "ok" (green) iff the solver answered *every*
# check-sat query in the instance with a definite sat/unsat. It is "not ok"
# (red) on any unknown, any (error ...), or a session cut off mid-way
# (timeout / crash => fewer answers than check-sat calls).
#
if [[ $# < 2 ]]; then
    echo "Usage: $0 instance solution"
    exit 100
fi

inst="$1"
sol="$2"

# number of check-sat / check-sat-assuming queries asked by the instance
n_q=$(grep -c -E '^\(check-sat' "$inst")

# the ordered stream of answers the solver actually produced
mapfile -t ans < <(grep -E -w -e '^sat' -e '^unsat' -e '^unknown' -e '^\(error' "$sol")

# red: any non-definite answer
if printf '%s\n' "${ans[@]}" | grep -q -E -w -e 'unknown' -e '^\(error'
then
	exit 1
fi

# red: session cut off before all queries were answered (timeout / crash)
if [[ "${#ans[@]}" -lt "$n_q" ]]
then
	exit 1
fi

# green: completed with all-definite answers; emit a token is_solved() accepts
if [[ "${ans[0]}" == unsat ]]
then
	echo unsat
else
	echo sat
fi
exit 0
