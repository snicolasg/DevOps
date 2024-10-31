texto = "hola mundo hermoso á é í ó ú"

corresp = {
    "á": "a",
    "é": "e",
    "í": "i",
    "ó": "o",
    "ú": "u"
}

texto_sin_tilde = []

for i in texto.lower():

   texto_sin_tilde.append(corresp.get(i,i))

print("".join(texto_sin_tilde))


