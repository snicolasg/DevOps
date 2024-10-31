

if [ $# -ne 3 ]
then
	echo "“Solo tres parámetros por favor." >&2
	exit 1
fi

if [ ! -f "$1" ]
then
	echo "$1 no es un archivo regular">&2
	exit 2
fi

if [ ! -f "$2"  ]
then
        echo "$2 no es un archivo regular">&2
        exit 2
fi

if [ ! -d "$3" ]
then
	echo "$3 no es un directorio">&2
	exit 2
fi

cp "$1" "$2" "$3"






