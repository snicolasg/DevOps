#!bin/bash


contador=0

#Controlo que me pasen un parametro
if [ $# -ne 1 ]
then
	echo "Se debe ingresar un directorio como parametro"
	exit 1
fi

ruta=$1

#Controlo que exista el directorio
if [ ! -d $ruta ]
then
	echo "El directorio ingresado NO existe"
	exit 1
fi

#Itero en todos los archivos .log del directorio que me pasaron
for archivo in $(find "$ruta" -type f -name "*.log")
do
	echo -e "\n" > $archivo
	#echo -n > $archivo
	echo "Archivo $archivo reseteado"
	((contador++))
done


echo "Cantidad de archivos log reseteados: $contador"








