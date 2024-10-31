#!/bin/bash

# Declaración de variables

#typeset -i i

#Inicialización de variables

#i=1  # Inicializamos el contador

for i
do

# Mientras el valor del parámetro $i no esté vacío
#while [ -n "${!i}" ]; do
    pepe=$(echo "$i" | bc -l)
    echo $pepe
    #((i++))  # Incrementar el contador
    #let i=i+1
 #   i=i+1
#done
done


