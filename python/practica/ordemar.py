# -*- coding: utf-8 -*-

lista = [ "papas:180", "peras:280", "sandias:30", "boniatos:80"]

ordenado = sorted(lista, key=lambda lista: lista[0])

print(ordenado)

lista.sort(key=lambda elemento: int(elemento.split(":")[1]), reverse=True)

print(lista)
