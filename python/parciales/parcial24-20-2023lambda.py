


lista_insumos = [ "rulemanes chicos:100:20", "rulemanes grandes:10:5", "tuercas:500:800", "chapas 5x5:80:30", "chapas 10x10:50:90", "ejes 40mm:10:30" ]

lista_insumos.sort(key = lambda elemento: int(elemento.split(":")[1]) + int(elemento.split(":")[2]), reverse = True)


print("Lista de Insumos")
print("")


for elemento in lista_insumos:
    
    partes, cantidad1, cantidad2 = elemento.split(":")[0], elemento.split(":")[1], elemento.split(":")[2]

    print("Nombre Insumo: {}\t Cantidad primera linea {}\t Cantidad segunda linea {}".format(partes,cantidad1,cantidad2)) 
