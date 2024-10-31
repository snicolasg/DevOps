contraseña = "Python"

cantidad_intentos_adicionales = 6

palabra = input("Por favor ingrese la contraseña: ")

while (palabra != contraseña) and (cantidad_intentos_adicionales > 0):

    palabra = input("Contraseña incorrecta, ingrese la contraseña correcta: ")
    
    cantidad_intentos_adicionales = cantidad_intentos_adicionales - 1

if (palabra != contraseña):
    
    print("Error: Se han terminado sus intentos, no puede ingresar!!")

else:

    print("Contraseña ingresada con éxito!!")
