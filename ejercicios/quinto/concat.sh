#!/bin/bash
if test $# -eq 0
then
	echo Se necesita al menos un parámetro >&2
	exit 1
fi
for i
do
	concat=$concat$i
done

echo Concatenación de todos los argumentos: $concat
echo Cantidad de caracteres que tiene: `echo -n $concat |wc -c`
