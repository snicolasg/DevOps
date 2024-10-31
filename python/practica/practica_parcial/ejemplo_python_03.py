texto = "hola mundo hermoso pepe"

corresp = {
    "a": "o",
    "e": "o",
    "i": "o",
    "o": "o",
    "u": "o",
}



#texto_sin_tilde = [ i for i in texto.lower() corresp.get(i,i)]

#for i in texto.lower():


 #   texto_sin_tilde.append(corresp.get(i,i))


print("".join(texto_sin_tilde))
