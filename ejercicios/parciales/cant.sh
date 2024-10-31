#!/bin/bash
cant=0
for i in *
do
	if [ -r "$i" ]
	then
		cant=$(($cant+1))
	fi
done
echo $cant
