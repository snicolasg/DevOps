#!/bin/bash

# Se verifica si se pasaron dos argumentos
if [ $# -ne 2 ]; then
    echo "Uso: $0 <num1> <num2>"
    exit 1
fi

# Se asignan los parámetros a variables para mayor claridad
num1=$1
num2=$2


#Si num1 es menor que num2 se intercambian valores
if [ $num1 -gt $num2 ]; then
    temp=$num1
    num1=$num2
    num2=$temp
fi

echo "Los numeros entre $num1 y $num2 son:"

num1=$((num1 + 1))
while [ $num1 -lt $num2 ]; do
    echo $num1
    ((num1++))
done

