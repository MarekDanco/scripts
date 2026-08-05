#!/bin/bash
#
# File:  render.sh
# Author:  mikolas
# Created on:  Thu Nov 27 02:43:12 PM UTC 2025
# Copyright (C) 2025, Mikolas Janota
#

for d in \
    20220315-MathProblems \
    20230321-UltimateAutomizerSvcomp2023 \
    20230328-sqrtmodinv-hoenicke \
    20250331-elster \
    AProVE \
    calypto \
    CInteger \
    ConcurrencySafety-Main \
    ITS \
    LassoRanker \
    LCTES \
    leipzig \
    mcm \
    ReachSafety-Loops \
    SAT14 \
    UltimateAutomizer \
    UltimateLassoRanker \
    ; do
    ./render_one.sh $d;
done
