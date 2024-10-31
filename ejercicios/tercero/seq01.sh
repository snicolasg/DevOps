#!/bin/bash


echo "Los numeros entre 1 y 100 son:"

contador=1

while [ $contador -le 100 ]; do
    echo $contador
    let contador=contador+1
done




