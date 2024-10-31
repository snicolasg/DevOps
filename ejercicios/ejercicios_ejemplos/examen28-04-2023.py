

stock = [ "5:10:40", "10:15:44", "7:60:1", "2:20:60" ]

stock.sort(key = lambda elemento: int(elemento.split(":")[0])*int(elemento.split(":")[1])*int(elemento.split(":")[2]))

total = 0 


for i in stock:
    
    a,b,c = i.split(":")

    total = int(a)*int(b)*int(c)

    print("{} Valor del stock de este ítem: {} ".format(i, total))
