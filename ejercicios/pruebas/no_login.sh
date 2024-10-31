#!/bin/bash

if [ -z "$1" ]; then
  echo "Por favor, proporciona un directorio como argumento."
  exit 1
fi

login=$(grep ":[^:]*$1$" /etc/passwd | cut -d: -f1)


if [ -n "$login" ]; then
        echo "El/los usuario/s con directorio $1 es/son $login"
else
        echo "El usuario con directorio $1 NO existe"
fi










