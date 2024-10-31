#/bin/bash

if [ $# -ne 1 ]
then
	echo "El script $0 solo recibe un directorio com parametro" >&2
	exit 1
fi

directorio=$1

if [ ! -d $directorio ]
then
	echo "$directorio NO es un directorio valido" >&2
	exit 2
fi

cd $directorio

for i in $(find . -name "*.txt")
do
	cant_palabras=0
	archivo=$(echo "$i" |  grep -o -E "[^/]+$")
	cant_lineas=$(wc -l $archivo| cut -d" " -f1)
	echo "La cantidad de lineas de $archivo son: $cant_lineas"

	for world in $(cat $archivo)
	do
		((cant_palabras++))
	done
	echo "La cantidad de palabras de $archivo son: $cant_palabras"
	
	cant_letras=$(grep -o "[a-zA-Z]" "$archivo" | wc -l)
	echo "La cantidad de letras de $archivo son: $cant_letras"


done


