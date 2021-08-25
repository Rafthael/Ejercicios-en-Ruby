#Tarea 1, Invertir un arreglo

nombres=["Carlos", "Jose", "Pedro", "Luis"]
puts "Array Original: #{nombres}"
#invertir manuealmente
#imprimir arreglo al reves
puts "los nombres invertidos son: #{nombres[3]},#{nombres[2]}, #{nombres[1]}, #{nombres[0]}"

#lectura Invertir los nombres  while
x = nombres.length

while 0 <= x-1 do
    puts "WHILE; el nombre posición #{x-1} es: #{nombres[x-1].to_s}"
    x-=1
end

puts ""
puts ""

#lectura Invertir los nombres con  for
z = nombres.length
for i in (0..z-1)
    puts "Con FOR, nombre #{nombres[z-1]} Pocision #{z-1} "
    z-=1
    
end

#cambiamos los valores del arreglo de posicion
zx = nombres.length
nombres_temp=[]
for i in (0..zx-1)

   nombres_temp[i]=nombres[zx-1]
   zx-=1
    
end

zxz = nombres.length
for i in (0..zxz-1)

   nombres[i]=nombres_temp[i]
   zxz-=1
    
end

print "array invertido final: "+ nombres.to_s

#metodos para realizar las tareas anteriores

def invertir(nombres)
    x = nombres.length
    while 0 <= x-1 do
        puts "DEF con WHILE; el nombre posición #{x-1} es: #{nombres[x-1].to_s}"
        x-=1
    end
end

puts ""
puts ""
puts  invertir(nombres)