#!bin/bash


#Se controla que se pasen 2 o mas numeros como parametros
if [ $# -lt 2 ]
then
	echo "Se debe ingresar 2 numeros como minimo a suamr" >&2
	exit 1
fi

resultado=0

for i
do

	if echo "$i" |  grep -E -q "^[0-9]+(\.[0-9]+)?$" #Se controla que solo se sumen numeros
	then
		resultado=$(echo "$resultado + $i" | bc -l ) #Se realiza la suma pasando cada parametro al comando bc
	else
		echo "$i no es un numero" #Si no es numero se avisa
	fi
done

echo "El resultado de la suma es: $resultado" #Se muestra el resultado




