#!bin/bash

#Inicialización de variables
contador=0
ruta=$1
extension=$2


#Se controla que se pasen 2 y solo 2 parametros
if [ $# -ne 2 ]
then
        echo "Se debe pasar una ruta de directorio seguido de una extensión de archivo (ej: /home/sysadmin/tmp .jpg)"
        exit 1
fi

#Se controla que la ruta pasada como argumento sea un directorio
if [ ! -d "$ruta" ]
then
	echo "Se debe proporciar una ruta de directorios valida"
	exit 2
fi


for i in "$ruta"/*"$extension"
do
	ruta_archivo=$i

	#Si el archivo con la extensión que me pasaron existe procedo a cambiar su nombre	
	if [ -e "$ruta_archivo" ]
	then
		nombre_archivo=$(echo "$ruta_archivo" | grep -o '[^/]+$') #Me quedo con la parte de la ruta que es el nombre del archvio
		mv "$nombre_archivo" "$(date +%Y%m%d)_$nombre_archivo" #Cambio al nombre, se le agrega la fecha del día
		((contador++)) #Controlo la cantidad de cambios que hago
	fi
done

echo "Se realizaron $contador cambios"


