matriz = []

for i in range(0,8):
   fila = []
   for j in range (0,8):
      # El valor es lo que se quiera poner en la celda con coordenadas
      # i, j. En este caso, se pone la fórmula i*2 + j + 1 para
      # obtener la matriz: 1 2
      #                    3 4
      valor = i*10 + j + 1
      fila.append(valor)
   matriz.append(fila)

print("ahora si se imprime")

for fila in matriz:
    for valor in fila:
        print(valor,end='\t')
    print()
    #print(' '.join(map(str, fila)))
