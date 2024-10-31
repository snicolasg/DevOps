lista_items = [ "ladrillos:.5:2", "tuercas:0.001:0.01", "pinceles:.1:.05", "pintura:60:50", "solvente:10:9", "bloques:3:6" ]

lista_items.sort(key = lambda elemento: float(elemento.split(":")[1]) * float(elemento.split(":")[2]))

print("Lista ordenada de ítems por densidad en forma ascendente")

for item in lista_items:

    elementos = item.split(":")
    #print(f"Ítem {elementos[0]}\tVolumen {elementos[0]}\tPeso {elementos[2]}\tDensidad {elementos[2]*elementos[1]}".format())

    print(f"Ítem: {elementos[0]}\tVolumen: {elementos[1]}\tPeso: {elementos[2]}\tDensidad: {float(elementos[2]) / float(elementos[1]):.2f}")




