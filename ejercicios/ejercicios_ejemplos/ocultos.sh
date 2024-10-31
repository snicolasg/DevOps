#!bin/bash

if [ $# -gt 1 ]
then
	echo "Se debe pasar cero o solo un directorio como parametro"
	exit 1
fi


if [ $# -eq 0 ]
then
	ls -la . | awk '{print $9}' | grep "^\." | tail -n +3
else
	if [ ! -d $1 ]
	then
		echo "El directorio $1 no existe"
		exit 2
	else
		ls -la $1 | awk '{print $9}' | grep "^\." | tail -n +3
	fi
fi

