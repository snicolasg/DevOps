
item_lista = [ "item1:10:10","item2:20:20","item3:30:30","item4:40:40","item4:5:8" ]

item_lista.sort(key = lambda elemento: int (elemento.split(":")[1]) + int (elemento.split(":")[2]), reverse=True) 


print("{:<20} {:<10} {:<10} {:<10}".format("NOMBRE", "CANTIDAD1", "CANTIDAD2", "TOTAL"))
print("")


for item in item_lista:

    nombre, cantidad1, cantidad2 = item.split(":")
    
    total = int(cantidad1) + int(cantidad2)

    print("{:<20} {:<10} {:<10} {:<10}".format(nombre, cantidad1, cantidad2, total))

    #print(f"{nombre:<20} {linea1:<10} {linea2:<10} {total:<10}")

