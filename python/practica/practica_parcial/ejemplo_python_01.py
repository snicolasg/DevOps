
lista_tuplas_productos = [ ("Rulemanes", "De acero al carbono"), ("Ruedas grandes", "Son de tractor"), ("Tuercas", "Pequeñas y baratas"), ("Destornilladores", "Producto de alta calidad"), ("Tester", "De hasta 100 Amperes") ]


lista_tuplas_productos.sort(key = lambda elemento: elemento[1].lower(), reverse = True)

print(lista_tuplas_productos)


lista_tuplas_productos.sort(key = lambda elemento: len(elemento[0].lower()))

print(lista_tuplas_productos)

