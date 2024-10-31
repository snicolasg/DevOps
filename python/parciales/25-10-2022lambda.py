

lista_productos = [ "tuercas:1100:10", "tornillos:1200:15", "pinceles:30:100", "destornilladores:60:150", "pinzas:50:430" ]


lista_productos.sort(key = lambda elemento: int(elemento.split(":")[1]) * int(elemento.split(":")[2]))

print("{:<20} {:<10}".format ("Nombre", "Total"))
print("*****************")
for i in lista_productos:

    nombre, cantidad, precio  = i.split(":")

    total = int(cantidad) * int(precio)

    print("{:<20} {:<10}".format(nombre, total))
