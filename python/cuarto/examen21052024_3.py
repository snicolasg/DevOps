


lista_tuplas_productos = [ ("Rulemanes", "De acero al carbono"), ("Ruedas grandes", "Son de tractor"), ("Tuercas", "Pequeñas y baratas"), ("Destornilladores", "Producto de alta calidad"), ("Tester", "De hasta 100 Amperes") ]


lista_tuplas_productos.sort(key = lambda elemento: elemento[1].lower(),  reverse = True)

for caracteristica in lista_tuplas_productos:

    print("Producto: {}\t Caracteristica: {}".format(caracteristica[0],caracteristica[1]))

print("++++++++++++++++++++++++++++++++++++++")

lista_tuplas_productos.sort(key = lambda elemento: len(elemento[0]))

for nombre  in lista_tuplas_productos:

    print("Producto: {}\t Caracteristica: {}".format(nombre[0],nombre[1]))



