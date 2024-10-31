#|bin/bash

if [ $# -gt 1 ]
then
	echo "Se debe pasar cero o un directorio como parametro"
	exit 1
fi

if [ $# -eq 0 ]
then
	find . -size +4k
else
	if [ ! -d $1 ]
	then
		echo "El directorio $1 no existe"
		exit 2
	else
		find $1 -size +4k
	fi
fi

