#!bin/bash

if [ $# -ne 1 ]
then
	echo "El script $0 recibe solo un directorio como parametro" >&2
	exit 1
fi

ruta=$1
contador=0

if [ ! -d $ruta ]
then
	echo "$ruta no es un directorio correcto" >&2
	exit 2
fi

for archivo in $(find $ruta -name "*.log" -size +100c)  #+5M)
do
	echo $archivo
	cat "$archivo" >> "archivos_comprimido.log"
	((contador++))

done

if [ ! -d "$ruta/archivos_grandes" ]
then
	mkdir "$ruta/archivos_grandes"
else
	if [ -e $ruta/archivos_comprimido.log ]
	then
		mv "$ruta/archivos_comprimido.log" "$ruta/archivos_grandes"
	fi
fi

echo "Se comprimieron $contador archivos"
