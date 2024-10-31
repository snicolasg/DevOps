lista_productos = [ "tuercas:1100:10", "tornillos:1200:15", "pinceles:30:100", "destornilladores:60:150", "pinzas:50:430" ]

cantidad = int(input("Ingrese cantidad a filtrar por mayor (entero): "))

lista_productos.sort(key = lambda elemento: int (elemento.split(":")[2]) > cantidad)

print(lista_productos)
