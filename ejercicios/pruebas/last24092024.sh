#!bin/bash

typeset -i contador
contador=0

if [ $# -eq 0 ]
then
	echo "Se debe pasar por lo menos una IP como argumento"
	exit 1
fi


for i
do
	ip=$i
	contador=$(last | grep $ip | wc -l)
        echo "Con la ip $ip se conectaron $contador veces"
	
	
done





