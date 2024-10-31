#!bin/bash

if [ $# -eq 0 ]
then
	echo "Se debe ingresar un nombre de usuario como argumento"
	exit 1
fi

for i
do
	if ! grep -q -E "^$1:" /etc/passwd
	then
		echo "El usuario $i no existe"
		exit 2
	else
		veces=$(last | grep -E "^$i" | wc -l)
		echo "El usuario $i se logeo $veces veces"
	fi
done

