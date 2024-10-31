#!/bin/bash

function usuario-existe {
	if grep -q "^$1:" /etc/passwd
	then
		return 0
	else
		return 1
	fi
}

if usuario-existe $1
then
	echo "El usuario existe!!!!"
else
	echo "El usuario $1 no existe en el sistema"
fi
