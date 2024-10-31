#!/bin/bash

echo "Mi PID es: $$"

while true
do
	echo "Todos los parámetros @: $@" >> log
	echo "Cantidad de parametros: $#" >> log
	sleep 10
done



