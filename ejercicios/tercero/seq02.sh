#!/bin/bash

num1=$1
num2=$2


#Si lo ingresaron los argumentos al reves los coloco menor primero y mayor despues
if [ $num1 -gt $num2 ]; then
    temp=$num1
    num1=$num2
    num2=$temp
fi

echo "Los numeros entre $num1 y $num2 son"

while [ $num1 -le $num2 ]; do
    echo $num1
    ((num1++))
done

