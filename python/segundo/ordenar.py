lista = [ "papaaas:180", "peras:280", "sandiaaaaaaas:30", "boniatos:80"]

lista_ordenada = sorted(lista, key=lambda x: x.split(":")[0].count('a'))

# Imprimir la lista ordenada
for item in lista_ordenada:
    print(item)
