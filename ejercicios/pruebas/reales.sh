#!/bin/bash

num1=$1


# Se verifica si se paso solo un real
if [ $# -ne 1 ]; then
    echo "Debe pasar como arguneto solo un numero real"
    exit 1
fi


# Verifica si es real el argumento
if ! [[ "$num1" =~ ^[+-]?[0-9]*\.?[0-9]+$ ]]; then
    echo "El numero $num1 no es un real"
    exit 1
else
    echo " El numero $num1 es un real"
fi




