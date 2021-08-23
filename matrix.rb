require "matrix"
#ahora veremos array multidimencionales con matrix

arrayDimensional1 = Matrix[[10,20,30],[40,50,60],[70,80,90]]
arrayDimensional2 = Matrix[[10,20,30],[40,50,60],[70,80,90]]

#Sumar las matrices o arrayMultidimensional

puts "La suma  todos los valores de los arrayMultidimencional son: #{arrayDimensional1 + arrayDimensional2}"

#obtener un valor especifico del array
puts "El valor del arrayDimensional1 posicion [0,1] es: #{arrayDimensional1[0,1]}"
puts "El valor del arrayDimensional1 posicion [1,1] es: #{arrayDimensional1[1,1]}"