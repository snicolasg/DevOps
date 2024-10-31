#!/bin/bas


echo "Las palabras mas usadas son: "
for palabra in $(cat $1)
do
        echo $palabra

done | sort | uniq -c | sort -nr | head -10 #| awk '{print $1, "veces la palabra:", $2}'



