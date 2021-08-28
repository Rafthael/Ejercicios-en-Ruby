
array1= [1,2,3,4,5,6]
array2= [3,4,5]
array3=[5,6,7,8]

#ver la diferencia  entre los arrays
 puts "los numeros diferentes entre arrays son: #{array1 - array2 - array3 }"

 #ver la interseccion  entre los arrays (Que numeros igual existe en cada array)
 puts "los numeros intersección entre arrays son: #{array1 & array2 & array3 }"

  #ver la UNION  entre los arrays (Que numeros igual existe en cada array)
  puts "los numeros unidos entre arrays, sin repetir son: #{array1 | array2 | array3 }"