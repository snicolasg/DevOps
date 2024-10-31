#!/bin/bash
if test $# -ne 0
then
  echo "Este script no recibe parámetros" >&2
  exit 1
fi
echo "El UID mas grande es "`cut -d: -f3 /etc/passwd | sort -n | tail -1`
