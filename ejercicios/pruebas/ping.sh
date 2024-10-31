#!/bin/bash

if [ $# -ne 1 ] 
then
    echo "Uso: $0 y nombre del archivo con las IP"
    exit 1
fi

archivo=$1

if [ ! -f "$archivo" ]
then
    echo "Error: El archivo '$archivo' no existe."
    exit 2
fi

if [ ! -r "$archivo" ]
then
    echo "Error: El archivo '$archivo' no tiene permisos de lectura."
    exit 3
fi

for linea in $(cat "$archivo")
do
    ip=$linea
	
    #Verifico primero que la IP sea valida
    if ! echo "$ip" | grep -E -q "^[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}$"
    then
	echo "$ip no es una IP valida"
    else
        if ping -c 4 "$ip" > /dev/null
       	then
            echo "La IP $ip está accesible."
        else
            echo "La IP $ip no responde."
        fi
    fi
done
