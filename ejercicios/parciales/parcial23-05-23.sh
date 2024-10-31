#!bin/bash

directorio=$1

if [ $# -gt 1 ]
then
	echo "Se debe ingresar solo un directorio como parametro" >&2
	exit 1
elif [ ! -d $directorio ] 
then
	echo "El directorio $directorio No existe. Ingresar un directorio valido" >&2
	exit 2
fi

if [ $# -eq 0 ]
then
	ls . -la | awk '{print $9 }' | grep -E "^\." | tail -n +3
else
	ls $directorio -la | awk '{print $9 }' | grep -E "^\." | tail -n +3
fi


