

lista_insumos = [ "rulemanes chicos:100:20", "rulemanes grandes:10:5", "tuercas:500:800", "chapas 5x5:80:30", "chapas 10x10:50:90", "ejes 40mm:10:30" ]

lista_insumos.sort(key = lambda elemento: int(elemento.split(":")[1]) + int(elemento.split(":")[2]), reverse = True)

total = 0

for i in lista_insumos:

    item = i.split(":")[0]

    total = int(i.split(":")[1]) + int(i.split(":")[2])

    print("Elemento: {}\t de un total: {}".format(item,total))
