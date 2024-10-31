#!bin/bash

if [ $# -eq 0 ]
then
	echo "Se debe pasar una palabra como minimo como parametro" >&2
	exit 1
fi



for i
do
	letras=$(echo -n "$i" | wc -m)

	echo "La palabra $i tiene $letras letras"

done


