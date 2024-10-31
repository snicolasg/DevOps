#!bin/bash


if [ "$1" = "" ] 
then
	echo "Se debe pasar dos archivos como parametro"
	exit 1
else
	archivo1=$1
	shift
fi


if [ "$1" = "" ]
then
        echo "Se debe pasar dos archivos como parametro"
        exit 2
else
        archivo2=$1
        shift
fi

if [ "$1" != "" ]
then
	echo "Se debe pasar dos archivos como parametro"
        exit 3
fi

#Otra forma de control
#iif [ $# -ne 2 ]
#then
#	echo "Se debe pasar dos archivos como parametro"
#	exit 1
#fi

if [ ! -e $archivo1 ]
then
	echo "El archivo $archivo1 no existe"
	exit 4
fi

if [ ! -e $archivo2 ]
then
        echo "El archivo $archivo2 no existe"
        exit 4
fi

diff -u "$archivo1" "$archivo2" | grep -E "^\+|^\-"




















