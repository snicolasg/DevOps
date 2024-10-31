#!/bin/bash

numero_lineas=$(top -b -n 1 | tr -s " " | wc -l)

echo $b

for (( a=1; a<=numero_lineas; a++ )); do
	echo $a
done

