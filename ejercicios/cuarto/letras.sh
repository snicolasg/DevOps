#!/bin/bas


echo "Las palabras mas usadas son: "
for palabra in $(cat $1)
do
        echo $palabra

done | fold -w1 | sort | uniq -c | sort -nr

#tr -d '[:space:]' | fold -w1 | sort | uniq -c | sort -nr



