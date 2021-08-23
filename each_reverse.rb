#each es otro metodo tipo bucle o ciclo

miArray = [1, "texto", "casa", 2,3]

#lectura de array con each, lee todos los elementos, \n realiza salto de linea
miArray.each {|a| print a, "\n"}

#lectura de elementos del array de forma inversa, desde derecha a izquierrda
miArray.reverse_each {|a| print "#{a} "}