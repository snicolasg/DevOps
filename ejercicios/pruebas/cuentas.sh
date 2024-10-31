#!/bin/bash

# Declaración de variables

typeset -i i

#Inicialización de variables

i=1  # Inicializamos el contador




# Mientras el valor del parámetro $i no esté vacío
while [ -n "${!i}" ]; do
    echo ${!i} | bc -l
    #((i++))  # Incrementar el contador
    #let i=i+1
    i=i+1
done



