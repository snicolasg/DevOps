#!bin/bash

if [ $# -ne 1 ]
then
	echo "El script $0 solo recibe un solo directorio como argumento" >&2
	exit 1
fi

directorio=$1
fecha=$(date +"%Y-%m-%d")

if [ ! -d $directorio ]
then
	echo "$directorio NO es un directorio valido" >&2
	exit 2
fi


for i in $(find $directorio -type f -name "*.conf")
do
	archivo=$(echo "$i" |  grep -o -E "[^/]+$")
	if ls | grep -E -o "[^_]$archivo$"
	then
		echo "$fecha"_"$archivo"
		#mv "$archivo" "$fecha_$archivo"
	fi
done
