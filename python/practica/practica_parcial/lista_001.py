

lista_tuplas_productos = [ ("Rulemanes", "De acero al carbono"), ("Ruedas grandes", "Son de tractor"), ("Tuercas", "Pequeñas y baratas"), ("Destornilladores", "Producto de alta calidad"), ("Tester", "De hasta 100 Amperes")]

lista_tuplas_productos.sort(key = lambda elemento: elemento[1].lower(), reverse = True)

print("Se despliega la lista ordenada alfabéticamente, por las características de los productos, en forma descendente:")
print("")

for i in lista_tuplas_productos:

    print("Producto:{}\t Caracteristica: {} ".format(i[0],i[1]))


lista_tuplas_productos.sort(key = lambda elemento: len(elemento[0]), reverse = True)


print ("Se despliega la lista ordenada por el largo en caracteres del nombre del producto (en forma creciente):")
print("")

for i in lista_tuplas_productos:

    print("Producto:{}\t Caracteristica: {} ".format(i[0],i[1]))

