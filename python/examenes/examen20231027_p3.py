

mi_lista = [ [10, 20, 30], [11, 10, 20], [100,200, 300], [-1, -10, 18]]

mi_lista.sort(key = lambda elemento: int(elemento[0] + int(elemento[1]) + int(elemento[2])))


for i in mi_lista:

    cant1 , cant2 , cant3 = i[0] , i[1] , i[2]

    total = cant1 + cant2 + cant3

    print("números:{}\t suma: {}".format(i,total))
