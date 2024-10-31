#!bin/bash


if [ $# -ne 2 ]
then
	echo "$0 solo recibe dos parametro">&2
	exit 1
fi


if [ ! -f $1 ]
then
	echo "El archivo no es correcto">&2
	exit 2
fi

if [ ! -d $2 ]
then
	echo "$2 no es un directorio valido">&2
	exit 3
fi

if [ ! -r $1 ]
then
	echo "$1 no tiene permiso de lectura">&2
	exit 4
fi

#lineas=$(wc -l $1 | cut -d" " -f1)
#echo "$1 tiene $lineas lineas"


#usuario=$(whoami)
#procesos=$(ps -u | grep -E "$usuario")
#echo "$procesos"

#cp "$1" "$2"

for i in "$2"/*.txt
#for i in $(find $2 -type f -name "*.txt")
do
	echo "entre"

done #| wc -l
