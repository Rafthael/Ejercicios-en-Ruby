f=15
c=10
minas=30

def posicionarMinas(z,minas)
(1..minas).each { |i| z[rand(0..z.length-1)][rand(0..z[0].length-1)] = "X" }
return z
end

def crearArreglo(f,c,minas)
z=Array.new(f,'')
for i in (0..f-1)
z[i]=Array.new(c,'')
end
posicionarMinas(z,minas)
return z
end

def imprimirTablero(z)
for i in (0..z.length-1)
print z[i]
puts ""
end
end

z=crearArreglo(f,c,minas)
puts z[0].length
imprimirTablero(z)