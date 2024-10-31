
#!bin/bash

if [ $# -ne 1 ]
then
	echo "$0 acepta solo  un archivo" >&2
	exit 1
fi

archivo=$1

if [ ! -f $archivo ]
then
	echo "$archivo NO es un archivo valida" >&2
	exit 2
fi


for ip in $(cat $archivo)
do
	if ! ping -c5 $ip >/dev/null 2>/dev/null
	then
		echo "$ip IP NO valida"
	else
		echo "$ip IP valida"
	fi

done
