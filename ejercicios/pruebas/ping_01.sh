#!/bin/bash

# Verifico si se ha pasado un archivo como argumento
if [ $# -ne 1 ]; then
    echo "Uso: $0 archivo.txt"
    exit 1
fi

# Guardar el nombre del archivo en una variable
archivo=$1

# Verifico si el archivo existe
if [ ! -f "$archivo" ]; then
    echo "Error: El archivo '$archivo' no existe."
    exit 2
fi

# Verifico si el archivo tiene permisos de lectura
if [ ! -r "$archivo" ]; then
    echo "Error: El archivo '$archivo' no tiene permisos de lectura."
    exit 3
fi

# Verifico si el archivo no está vacío
if [ ! -s "$archivo" ]; then
    echo "Error: El archivo '$archivo' está vacío."
    exit 4
fi

# Recorrer línea a línea el archivo usando un bucle for
#IFS=$'\n'
for linea in $(cat "$archivo"); do
    ip=$linea

    #if ! echo "$ip" | grep -E -q "^[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}$" ;then
    if ! echo "$ip" | grep -E -q "^((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\.){3}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])$";then
	echo "$ip no es una IP valida"
    else
        if ping -c 4 "$ip" > /dev/null; then
            echo "La IP $ip está accesible."
        else
            echo "La IP $ip no responde."
        fi
    fi
done

# Recorrer línea a línea el archivo usando un bucle while con read
#while IFS= read -r linea; do
#    echo "Línea: $linea"
#done < "$archivo"

