#!bin/bash

if [ $# -ne 1 ]
then
	echo "El script solo recibe un parametro" >&2
	exit 1
fi

usuario=$1

if grep -q "^$usuario" /etc/passwd
then
	echo -n "El directorio home del usuario $usuario es: "
	grep "^$usuario" /etc/passwd | cut -d: -f6
else
	echo "El usuario $usuario no existe"
fi



