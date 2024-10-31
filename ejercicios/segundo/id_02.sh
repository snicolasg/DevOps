#!/bin/bash

echo "Mi PID es: $$"

contador=0

echo -n "Ingrese los parámetros separados por espacios: "
read -a parametros


while true
do
        ((contador++))
        if [ $contador -le 5  ]
        then
		for parametro in "${parametros[@]}"; do
	                echo "Todos los parámetros $parametro" >> log_02
	                sleep 10
		done
        else
                break
        fi
done

