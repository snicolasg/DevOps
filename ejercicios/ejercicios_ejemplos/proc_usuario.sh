#!bin/bash

if [ $# -ne 1 ]
then
	echo "Se debe pasar un solo usuario"
	exit 1
fi

usuario=$1

if ! egrep -q "^$1:" /etc/passwd
then
	echo "El usuario $usuario NO existe"
	exit 2

fi


ps -ef | grep -E "^$usuario" | wc -l

ps -u $usuario | tail -n +2 | wc -l






