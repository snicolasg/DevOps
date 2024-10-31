#!/bin/bash

# Sintaxis: pot base exp
POT=1

for i in `seq 1 $2`
do
	POT=$(( $POT * $1 ))
done
echo $POT
exit 0
