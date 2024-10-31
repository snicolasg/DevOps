#!bin/bash

if [ $# -ne 2 ]
then
	echo "2 parámetros Únicamente!!!!" >&2
	exit 1
fi

#if [ ! -f $1 ]
#then
#	echo "Se debe ingresar un archivo regular" >&2
#	exit 2
#elif
#[ ! -f $2 ]
#then
#	echo "Se debe ingresar un archivo regular" >&2
#	exit 2
#fi

if [ ! -f $1 ] || [ ! -f $2 ]
then
	echo "Se debe ingresar un archivo regular" >&2
        exit 2
fi

if [ ! -r $1 ] && [ ! -r $2 ]
then
        echo "El archivo no tiene permiso de lectura" >&2
        exit 3
fi


if [ ! -r $1 ]
then
	echo "El archio $1 no tiene permiso de lectura" >&2
elif [ ! -r $2 ]
then
	echo "El archio $2 no tiene permiso de lectura" >&2
fi

cat $1 >> $2
wc -l $2 | cut -d" " -f1












