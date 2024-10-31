

texto=input("Ingrese un texto: ")

lista=(list(texto))

lista_pares=[]
lista_impares=[]
cant=0


for elemento in lista:
   
    if elemento != " ":
    
        cant=cant+1
        if cant % 2 == 0:
            #lista_pares.append(elemento)
            lista_pares = lista_pares + [elemento]
        else:
            #lista_impares.append(elemento) 
            lista_impares = lista_impares + [elemento]


print("".join(lista_pares))
print("".join(lista_impares))

