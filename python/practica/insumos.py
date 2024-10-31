
lista_insumos = [ "rulemanes chicos:100:20", "rulemanes grandes:10:5", "tuercas:500:800", "chapas 5x5:80:30", "chapas 10x10:50:90", "ejes 40mm:10:30" ]


print("{:<20} {:<10} {:<10} {:<10}".format("nombre", "linea1", "linea2", "total"))
print("")


for insumo in lista_insumos:

    nombre, linea1, linea2 = insumo.split(":")
    
    total = int(linea1) + int(linea2)

    print("{:<20} {:<10} {:<10} {:<10}".format(nombre, linea1, linea2, total))

    #print(f"{nombre:<20} {linea1:<10} {linea2:<10} {total:<10}")

