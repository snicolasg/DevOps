#!/bin/bash
opcion=""
while [ "$opcion" != "q" ]
do
        echo""
        echo "Que te gustaría hacer? (Ingrese q para salir)" >&2
        echo ""
        echo "*********************************************"
        echo ""
        echo "1.        Mostrar el uso del disco."
        echo "2.        Mostrar el tiempo de actividad del sistema."
        echo "3.        Mostrar los usuarios registrados en el sistema."
        read opcion
        if [ "$opcion" != "1" ] && [ "$opcion" != "2" ] && [ "$opcion" != "3" ] && [ "$opcion" != "q" ] >&2
        then
                echo"" >&2
                echo "Opcion no valida" >&2
        else
                if [ "$opcion" = "1" ]
                then
                        clear
                        echo "***El uso del disco es***" >&2
                        echo "" >&2
                        df -h
                fi
                if [ "$opcion" = "2" ]
                then
                        clear
                        echo "***El tiempo de actividad del sistema es***" >&2
                        echo "" >&2
                        uptime
                fi
                if [ "$opcion" = "3" ]
                then
                        clear
                        echo "***Los usuarios registrados en el sistema son***" >&2
                        echo "" >&2
                        cut -d: -f1 /etc/passwd
                fi
        fi
done
echo "¡Adiós!" >&2
