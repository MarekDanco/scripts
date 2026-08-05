#!/bin/bash

for d in n2l*; do
	cd $d;
	pwd;
	cat run;
	cd ..;
done
