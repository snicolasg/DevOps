#!bin/bash

if [ $# -ne 2 ]
then
	echo “Este script recibe solamente 2 parámetros.” >&2
	exit 1
fi

numero1=$1
numero2=$2

if [ $numero1 -gt $numero2 ]
then
	echo "$numero1 es mayor a $numero2"
elif [ $numero1 -lt $numero2 ]
then
	echo "$numero2 es mayor a $numero1"
else
	echo "$numero1 es igual a $numero2"
fi


