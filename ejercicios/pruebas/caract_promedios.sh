#!/bin/bash
if test $# -eq 0
then
echo "División por cero" >&2
exit 1
fi
totalcaracteres=0
for i
do
canti=`echo -n $i | wc -c`
totalcaracteres=$(($totalcaracteres+$canti))
done
echo -n "el promedio de caracteres por parámetro es: "
echo $totalcaracteres/$# | bc -l
