

lista_a_ordenar = [ "papas:110:30", "arroz:60:20", "sandias:30:40", "peras:60:50", "ricas naranjas:50:30"]


#lista_a_ordenar.sort(key = lambda elemento: len(elemento), reverse = True) 

#print(lista_a_ordenar)

#lista_a_ordenar.sort(key = lambda elemento: int(elemento.split(":")[1])*int(elemento.split(":")[2]), reverse = True) 

#print(lista_a_ordenar)

#lista_a_ordenar.sort(key = lambda elemento: int(elemento.split(":")[2]))

#print(lista_a_ordenar)

lista_a_ordenar.sort(key = lambda elemento: int(elemento.split(":")[1]))

print(lista_a_ordenar)
