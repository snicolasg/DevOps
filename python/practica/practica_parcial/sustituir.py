texto = "hola mundo hermoso pepe"

corresp = {
    "a": " ",
    "e": "o",
    "i": "o",
    "o": "o",
    "u": "o",
}

texto_sin_tilde = []

for i in texto.lower():

    print(corresp.get(i,i))
    texto_sin_tilde.append(corresp.get(i,i))

print("".join(texto_sin_tilde))


