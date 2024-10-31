#!bin/bash

if [ $# -ne 2 ]
then
	echo "2 parámetros Únicamente!!!!." >&2
	exit 2
fi

#Inicializo variables
archivo1=$1
archivo2=$2

if [ ! -f $archivo1 ]
then
	echo "El archivo $archivo1 NO es un archivo regular" >&2
	exit 2
elif [ ! -f $archivo2 ]
then
	echo "El archivo $archivo2 NO es un archivo regular" >&2
	exit 2
fi

if [ ! -r $archivo1 ]
then
        echo "El archivo $archivo1 NO tiene permiso de lectura" >&2
        exit 3
elif [ ! -r $archivo2 ]
then
        echo "El archivo $archivo2 NO tiene permiso de lectura" >&2
        exit 3
fi

echo "----- Texto entre $archivo1 y $archivo2 -----" >> $archivo2
cat $archivo1 >> $archivo2

echo -n "La cantidad de lineas del nuevo archivo es: "
wc -l $archivo2 | cut -d" " -f1





