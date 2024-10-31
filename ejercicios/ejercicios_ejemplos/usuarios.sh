#!bin/bash

if [ $# -ne 0 ]
then
	echo "Este script no acepta parametros"
	exit 1
fi

nro_usuarios=$(cat /etc/passwd | wc -l )
echo "La cantidad de usuarios registrados es de $nro_usuarios"

usu_conectados=$(who | awk '{print $1}'| sort | uniq | wc -l) # segundo
usu_conectados_1=$(who | awk '{print $1}'| wc -l) # primero
echo "La cantidad de usuarios conectados es $usu_conectados_1"
echo "La cantidad de usuarios conectados no repetidos es $usu_conectados"





