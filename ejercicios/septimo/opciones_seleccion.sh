#!bin/bash

if [ $# -ne 0 ]
then
	echo "Este script no recibe parametros" >&2
	exit 1
fi


opt=""

clear #Limpio la pantalla antes de desplegar el menu
while [ "$opt" != "q" ] #Mientras no me ingresen la opción q(salir) ingreso
do
	#Despliego menu
	echo "1. Mostrar el uso del disco"
	echo "2. Mostrar el tiempo de actividad del sistema."
	echo "3. Mostrar los usuarios registrados en el sistema."
	echo -n "Que te gustaría hacer? (Ingrese opciones 1, 2 o 3. Ingrese q para salir): "
	read opt # Leo opción ingresada

	if [ "$opt" != "q" ]
	then
		if [ $opt = "1" ] #Si la opción es 1 ingreso y muestro uso del disco
		then
			echo ""
			df -h
		elif [ $opt = "2" ] #Si la opción es 2 ingreso y muestro el tiempo de actividad del sistema
		then
			echo ""
			uptime
			#top -n 1 | grep "up"
		elif [ $opt = "3" ] #Si la opción es 3 ingreso y muestro los usuarios registrados en el sistema.
		then
			echo ""
			who
		else
			echo ""
			echo "***ATENCIÓN*** Opción no válida." #Si no es 1,2,3 o q la opción ingresada, despliego error y no hago nada
		fi
		echo ""
		echo -n "Presione cualquier tecla para continuar "
                read continua #Espero para limpiar la pantalla hasta que el usuario presione un tecla
                clear #Limpio la pantalla para mostrar mejor de nuevo el menu
	fi
done
