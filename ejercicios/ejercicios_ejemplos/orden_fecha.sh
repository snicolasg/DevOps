#!bin/bash


if [ $# -ne 1 ]
then
	echo "Se debe pasar un solo directorio como parametro" >&2
	exit 1
fi

directorio=$1

if [ ! -d $directorio ]
then
	echo "El directorio $directorio NO existe" >&2
	exit 2
fi

cd $directorio
find . -type f -printf "%T@ %p\n" | sort -nr | cut -d' ' -f2




