

texto = input("Ingrese texto a invertir: ")

texto_invertido=""


for letra in texto:
    texto_invertido = letra + texto_invertido

print(texto_invertido)


lista_inversa = []

lista = list(texto)

for elemento in lista:
    
    lista_inversa.insert(0,elemento)


print("".join(lista_inversa))



