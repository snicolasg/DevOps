#!/bin/bash


if [ ! $# -eq 1 ]
then
	echo "Script solo acepta un parametro">&2
	exit 1
fi

nombre=$1


if  grep -q -E "^$nombre:.*:/bin/bash$" /etc/passwd
then
	echo "El usuario existe"
else
	echo "no existe"
	
fi

