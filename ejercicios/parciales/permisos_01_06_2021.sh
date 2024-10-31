#!bin/bash

if [ $# -ne 1 ]
then
	echo "El script $0 solo recibe un parametro" >&2
	exit 1
fi

directorio=$1

if [ ! -d $directorio ]
then
	echo "El parametro $directorio no es un directorio" >&2
	exit 2
fi


#ls -l $directorio | grep -o -E ""^-..."|[^ ]+$" | tail -n +2
ls -l $directorio  | awk '{print substr($1, 2, 3), $9}' | tail -n +2

