#!bin/bash


if [ "$#" -gt 1 ]
then
	echo "$0 solo acepta cero o un parametro" >&2
	exit 1
fi

if [ $# -ne 0 ]
then
	if [ ! -d $1 ]
	then
		echo "$1 no es un directorio valido" >&2
		exit 2
	else
		#ls -a $1 | grep "^\."
		ls -ld  $1/.*
	fi
else
	#ls -a | grep "^\."
	ls -ld .*
fi

