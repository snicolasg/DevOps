#!/bin/bash

# Verificar si se pasó un argumento
if [ $# -eq 0 ]; then
    echo "Por favor, ingresa un nombre de usuario."
    exit 1
fi

# Obtener el nombre del usuario
usuario=$1

# Buscar el grupo principal al que pertenece el usuario
grupo=$(grep ":x:[0-9]\+:" /etc/passwd | grep "^$usuario:" | cut -d':' -f4)
nombre_grupo=$(grep ":$grupo:" /etc/group | cut -d':' -f1)

# Verificar si el grupo fue encontrado
if [ -z "$nombre_grupo" ]; then
    echo "El usuario no existe o no pertenece a ningún grupo."
else
    echo "El usuario $usuario pertenece al grupo: $nombre_grupo"
fi

