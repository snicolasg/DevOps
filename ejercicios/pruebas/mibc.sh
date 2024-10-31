#!/bin/bash

# Verificar si se ha proporcionado una expresión
if [ $# -ne 1 ]; then
    echo "Uso: $0 expresión"
    exit 1
fi

# Leer la expresión matemática del argumento
expresion=$1

# Evaluar la expresión usando bc con la opción -l para precisión de punto flotante
resultado=$(echo "$expresion" | bc -l)

# Mostrar el resultado
echo "El resultado de '$expresion' es $resultado"

