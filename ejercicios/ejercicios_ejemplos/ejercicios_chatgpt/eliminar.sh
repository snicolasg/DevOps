#!bin/bash

if [ $# -ne 1 ]
then
	echo "El script $0 solo recibe un directorio como parametro" >&2
	exit 1
fi

directorio=$1

if [ ! -d $directorio ]
then
	echo "$directorio NO es un directorio valido" >&2
	exit 2
fi


for i in $(find $directorio -type f ! -name "*.log") # -printf "%f\n")
do
	archivo=$i
	if find "$archivo" -mtime +30 > /dev/null 2>&1
	then
		echo "$archivo con más de 30 días"
		mv "$directorio" "$directorio/tmp"
	else
		echo "$archivo con menos de 30"
	fi
done






