#!bin/bash

#Inicialización de variantes
ruta=$1
contador=0

if [ $# -ne 1 ]
then
	echo "Se debe pasar solo una ruta de directorio como parametro" >&2
	exit 1
fi


if [ ! -d $ruta ]
then
	echo "El directorio $ruta no existe" >&2
	exit 2
fi

#for i in $(find $ruta -type f -name "*.log" | grep -o -E '[^/]*$' | grep -E -v [0-9]+)
#for i in $(find $ruta -type f -name "*.log" -printf "%f\n" | sort) 
for i in $(find $ruta -type f -name "*.log" )
do
	archivo=$(echo "$i" |  grep -o -E "[^/]+$")
	if ! echo $archivo | grep -E -q "[0-9]+"  
	then
		((contador ++))
		mv "$archivo" "$contador"_"$archivo" >/dev/null

        fi

done	



