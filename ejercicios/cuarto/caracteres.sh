#!/bin/bash

#for archivo in *
for archivo in $*
do
	echo $archivo - $(echo -n "$archivo" | wc -c)
	
done




#for archivo in *.txt
#do
#   echo $archivo - $(wc -c $archivo|cut -d" " -f1) 
#done



