#!/bin/bash
#
# File:  render.sh
# Author:  mikolas
# Created on:  Thu Nov 27 02:43:12 PM UTC 2025
# Copyright (C) 2025, Mikolas Janota
#

for d in \
    problems-checksat-cvc5 \
    problems-checksat-z3 \
    ; do
    ./render_one.sh $d;
done
