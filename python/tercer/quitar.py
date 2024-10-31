

texto="Hola mundo"
texto_a_quitar="hun"


lista=list(texto)

nueva_lista= []


for i in lista:

    if i.lower() not in texto_a_quitar:
        nueva_lista.append(i)


print("".join(nueva_lista))
