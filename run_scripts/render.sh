#!/bin/bash
#
# File:  render.sh
# Author:  mikolas
# Created on:  Thu Nov 27 02:43:12 PM UTC 2025
# Copyright (C) 2025, Mikolas Janota
#

for d in \
    test \
    ; do
    ./render_one.sh $d;
done
