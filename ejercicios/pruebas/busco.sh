#!/bin/bash -j -h


palabra=$(grep "^$1:x:$2:" /etc/passwd | cut -d: -f1)


if [ -n "$palabra" ] ; then
	echo "El usuario $1 con UID $2 existe"
else
	echo "El usuario $1 con UID $2 NO existe"
fi

echo $?


