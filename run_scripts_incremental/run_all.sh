#!/bin/bash
#
# File:  run_true_nia_all.sh
# Author:  mikolas
# Created on:  Sat Jan 24 12:19:30 PM UTC 2026
# Copyright (C) 2026, Mikolas Janota
#
#

find contract-files \
 -name "*.smt2" | parallel -j 110 ./run_arg.sh {2} {1} :::: - ::: n2l n2l--zeros n2l--zeros--fproj n2l--bounds n2l--zeros--bounds z3 cvc5

./render.sh
