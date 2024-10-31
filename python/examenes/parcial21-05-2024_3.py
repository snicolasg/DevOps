lista_tuplas_productos = [ ("Rulemanes", "De acero al carbono"), ("Ruedas grandes", "Son de tractor"), ("Tuercas", "Pequeñas y baratas"), ("Destornilladores", "Producto de alta calidad"), ("Tester", "De hasta 100 Amperes") ]


lista_tuplas_productos.sort(key = lambda elemento: elemento[1].lower(), reverse = True)

print("Se despliega la lista ordenada alfabéticamente, por las características de los productos, en forma descendente:")
print("")


for completo in lista_tuplas_productos:

    #print("Producto:{}\t Caracteristica: {} ".format(completo[0],completo[1]))

    print(f"Elemento {completo[0]}\tCaracteristica {completo[1]}\t")


print("Se despliega la lista ordenada por el largo en caracteres del nombre del producto (en forma creciente):")
print("")

lista_tuplas_productos.sort(key = lambda elemento: len(elemento[0]))

for completo in lista_tuplas_productos:

    #print("Producto:{}\t Caracteristica: {} ".format(completo[0],completo[1]))

    print(f"Elemento {completo[0]}\tCaracteristica {completo[1]}\t")

