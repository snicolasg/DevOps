#!/bin/bash

OPTIONS="Hello Quit"
select opt in $OPTIONS ; do
	if [ "$opt" = "Quit" ] ; then
		echo “Bye bye!!”
	exit 0
	elif [ "$opt" = "Hello" ] ; then
		echo "Hola, mundo"
	else
		clear
		echo "Opción incorrecta, inténtelo nuevamente"
	fi
done
