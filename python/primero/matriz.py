matriz = []

for i in range(0,2):
    fila = []
    for j in range (0,2):
        valor = i*2 + j + 1
        fila.append(valor)
    matriz.append(fila)

print(matriz)

