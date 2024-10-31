#!bin/bash

if [ $# -eq 0 ]
then
	echo "Se debe ingresar un usuario como parametro" >&2
	exit 1
fi

if [ $# -gt 1 ]
then
	echo "$0 solo acepta un usuario como parametro" >&2
	exit 1
fi

usuario=$1

if ! grep -q -E "^$usuario:" /etc/passwd
then
	echo "El usuario $usuario NO existe"
	exit 1
fi

echo "Procesos del usuario $usuario"
ps -u $usuario

echo ""
echo "Cantidad de procesos actuales del usuario $usuario"
ps -u $usuario | awk 'NR>1 {print $1}' | wc -l
ps -u $usuario | tail -n +2 | wc -l 


