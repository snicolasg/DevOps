#!bin/bash

typeset -i contador
contador=0
archivo=$1


if [ $# -ne 1 ]
then
	echo "Se debe pasar un archivo como argumento."
	exit 1
fi

if [ ! -f "$archivo" ]
then
	echo "Error: El archivo $archivo no existe."
	exit 2
fi

if [ ! -s "$archivo" ]; then
    echo "Advertencia: El archivo $archivo está vacío."
    exit 3
fi

if [ ! -r "$archivo" ]; then
    echo "Error: El archivo $archivo no tiene permisos de lectura."
    exit 4
fi

for linea in $(cat $archivo)
do
	ip=$linea
	contador=$(last | grep $ip | wc -l)
        echo "Con la ip $ip se conectaron $contador veces"
done	





