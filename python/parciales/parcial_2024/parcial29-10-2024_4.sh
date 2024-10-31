#!bin/bash


if [ $# -ne 4 ]
then
	echo "Por avor, ingrese exactamente 4 parametros" >&2
	exit 1
fi

contador=0
read=0

for i
do
	((contador++))
	if [ ! -f $i ]
	then
		echo "El archivo $i no es regualr, verifique el parametro $contador" >&2
		exit 2
	fi

	if [ ! -r $i ]
	then
		read=1
	fi
done

if [ $read = 0 ]
then
	echo "Eureka!!!!!"
fi



