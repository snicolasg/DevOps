import math #perímetro de un círculo cuyo radio es solicitado al usuario. 

radio = input("Ingrese el radio del círculo a calcularle el perímetro: ") 

resultado=(2*math.pi*int(radio))

print("El perímetro un círculo con radio {} es: {}.".format(radio,resultado))
