


texto="HOLA BUENAS TARDES a TODOS COMO LESVA"

par=""
impar=""

for i in range(len(texto)):
    #if not texto[i].isspace():
    if texto[i] != " ":
        if i%2==0:       
            par=par+texto[i]+ ""    
        else:        
            impar=impar+texto[i]+ ""

print("pares:", par)
print("impares:", impar)
