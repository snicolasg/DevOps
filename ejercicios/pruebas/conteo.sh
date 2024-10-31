#!/bin/bash

#echo -n "Por favor, ingrese dos numeros enteros: "
#read num1 num2

echo -n "Ingrese un numero entero: "
read num1
echo -n "Ingrese un numero entero: "
read num2



# Verifica si ambos números ingresados son enteros
if ! [[ "$num1" =~ ^-?[0-9]+$ ]] || ! [[ "$num2" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Debe ingresar dos números enteros válidos."
    exit 1
fi


if [ $num1 -gt $num2 ]; then
    temp=$num1
    num1=$num2
    num2=$temp
fi

echo "Los numeros entre $num1 y $num2 son"

num1=$((num1 + 1))
while [ $num1 -lt $num2 ]; do
    echo $num1
    ((num1++))
done

