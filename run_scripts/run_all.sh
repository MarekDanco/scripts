#!/bin/bash

find contract-files \
 -name "*.smt2" | parallel -j 110 ./run_arg.sh {2} {1} :::: - ::: vampire

./render.sh
