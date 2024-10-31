lista = [ "papas:120:50", "peras:80:20", "sandias:8:200", "boniatos:60:40", "tornillos:10:1250" ]

lista.sort(key = lambda elemento: int (elemento.split(":")[1]) * int (elemento.split(":")[2]))

print(lista)

