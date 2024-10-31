#!/bin/bash
CMD="echo Bienvenido al Ejecutador de Comandos"
SALIDA=salir
#Si la variable $LOGNAME no está definida, puede usarse `whoami`.
#Si la variable $HOME no está definida, se puede sacar la
#información del archivo /etc/passwd.

echo "Entra `tty` `date`" >> $HOME/$LOGNAME

while [ "$CMD" != "$SALIDA" ] ; do
	$CMD
	read CMD
done

echo "Sale `tty` `date`" >> $HOME/$LOGNAME
exit 0
