#!bin/bash


if [ $# -eq 0 ]
then
	echo "Se debe pasar una ruta de directorio como argumento"
	exit 1
else
	if [ $# -gt 1 ]
	then
		echo "Se debe pasar solo una ruta de directorio como argumento"
		exit 2
	fi
fi




