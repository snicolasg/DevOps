#!bin/bash

#for i in $(seq 124 5555)
for ((i=124; i<=5555; i++))
do
	if echo $i | grep -q -E "^[1589]" 
	then
		if echo $i | grep -q -E "[345]$"
		then
			echo $i
		fi
	fi
done



