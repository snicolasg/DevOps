#!bin/bash

if [ $# -ne 1 ] 
then
	echo "Se debe pasar un archivo como argumento"
	exit 1
fi

archivo=$1

if [ ! -e "$archivo" ]
then
	echo "El archivo $archivo NO existe"
	exit 2
fi

if [ ! -d "$archivo" ]
then
	if [ -r "$archivo" ]
	then
		echo "El archivo $archvio existe y tiene permiso de lectura"
	else
		echo "El archivo $archivo existe pero no tiene permiso de lectura"
	fi
else
	ls $archivo
fi







