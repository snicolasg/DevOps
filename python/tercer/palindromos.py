

frase=input("Por favor ingrese la frase para verificar si es palíndromo: ")

frase = frase.lower().replace(" ","")

print("Frase Normalizada (quitando espacios y pasando a minúscula: " + frase)

frase_inversa = frase[::-1]

print("Frase invertida Normalizada: " + frase_inversa)

es_palindromo = frase==frase_inversa

print("Análisis de palíndromo (es palíndromo True/False): " + str(es_palindromo))


