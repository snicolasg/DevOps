#!bin/bash


if [ $# -ne 1 ]
then
	echo "Se debe pasar solo un nombre de hosts"
	exit 1
fi

hosts=$1

if grep -q "^$hosts " /etc/hosts
then
	echo "Host $hosts definido en /etc/hosts"
else
        echo "Host $hosts NO definido en /etc/hosts"
fi





