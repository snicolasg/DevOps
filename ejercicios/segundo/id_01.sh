#!/bin/bash

echo "Mi PID es: $$"

contador=0

while true
do
	((contador++))
	if [ $contador -le 5  ]
	then
		echo "Todos los parámetros @: $@" >> log_01
	        echo "Cantidad de parametros: $#" >> log_01
	        sleep 10
	else
		break
	fi
done




