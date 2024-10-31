#!/bin/bash

cd $1

for i in $(find -name "*.log" ) #-printf "%f\n")
do
        echo -n >$i
done



#cd $1
#s -l

#or archivo in $(find -name "*.log")
#o
        #echo -e "\n" > $archivo
 #      echo -n > $archivo
#       echo "Archivo $archivo reseteado"
 #      ((contador++))
#one
