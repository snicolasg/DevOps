#!/bin/bash

# Función para listar directorios
listar_directorios() {
    echo "Directorios en el directorio corriente:"
    # Usamos find para listar solo directorios en el directorio actual
    find . -maxdepth 1 -type d
}

# Llamar a la función
listar_directorios

