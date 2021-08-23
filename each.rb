
=begin
   Podemos usar un each para recorrer directamente los indices de un arreglo
   como el ejemplo de abajo 
=end

arr = ["Mane, Carolina,
puts i Claudia, Marco, Sebastián, Eduardo, Freddy"]
arr.each do |i|
end


=begin
   Podemos usar un each para obtener el valores que estan separados por espacio 
   como el ejemplo de abajo 
=end
nums = %w[uno dos tres cuatro cinco seis siete ocho]
str = " "
#aca se lee el dato desde final al principio
nums.reverse_each { |nums| str += "#{nums} " }
nums.each { |nums| str += "#{nums} " }
puts str

