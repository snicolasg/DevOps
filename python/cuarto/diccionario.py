diccionario = {
    '2910290': 'Leonardo Mendez',
    '1298568': 'Juan Perez',
    '5884569': 'Algún Fulano'
}

# Nombre que deseas buscar
nombre_busqueda = 'Juan Perez'

# Buscar la cédula por nombre
cedula_encontrada = None
for cedula, nombre in diccionario.items():
    if nombre == nombre_busqueda:
        cedula_encontrada = cedula
        break  # Salir del bucle una vez que encontramos la cédula

if cedula_encontrada:
    print(f"La cédula de {nombre_busqueda} es: {cedula_encontrada}")
else:
    print(f"No se encontró a {nombre_busqueda}.")

