#!/bin/bash

S="Sintaxis $0 [ usuario ]"

if test $# -ne 1
then
  echo "Error de $S" >&2
  exit 1
fi
if ! grep -q "^$1:" /etc/passwd
then
  echo "el usuario $1 no existe" >&2
  exit 2
fi
echo el usuario $1 se conecto `last | grep "^$1 " | wc -l` veces
