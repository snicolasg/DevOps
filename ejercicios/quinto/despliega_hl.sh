#!bin/bash

#Controlo que me hayan pasado uno y solo un argumento
if [ $# -ne 1 ]
then
	echo "Se debe pasar solo un archivo como argumento" >&2
	exit 1
fi

#Inicialización de variantes
archivo=$1
contador=0

#Controlo que el archivo pasado como argumento exista
if [ ! -e "$archivo" ]
then
	echo "El archivo $archivo NO existe"
	exit 2
fi

#Busco el punto de montaje del archivo
punto_montaje=$(df "$archivo" | awk 'NR>1 {print $6}')

#Busco el inodo del archivo
inodo=$(ls -inum $archivo | cut -d " " -f1)

#Busco segun el punto de montaje y el inodo los hard links que corresponden al archivo
resultados=$(find "$punto_montaje" -xdev -inum "$inodo")

echo $resultados

#Compruebo cuantas coincidencias hubo
contador=$(echo "$resultados" | wc -l)


if [ $contador -gt 1 ]
then
	#Si hubo mas de 2 coicidencias es que tiene hard links, los muestro
	echo "Los hard links del archivo $archivo son:"
	for i in $resultados
	do
		echo $i
	done
else
	#Si no hubo mas de 1 coincidencia, no tiene hard links, muestro mensaje
	echo "El archivo $archivo no tiene hard links"
fi


echo $contador


















