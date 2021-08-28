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
z[i]=Array.new(c,' ')
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
print "Fila:";
fila=gets.to_i
print "Columna:";
columna=gets.to_i

n=0
if z[fila][columna]=="X"
puts "Perdiste"
else
n+=(fila>0 and columna>0) ? ((z[fila-1][columna-1]=="X") ? 1: 0): 0;
n+=(fila>0) ? ((z[fila-1][columna]=="X") ? 1: 0): 0;
n+=(fila>0 and columna<c-1) ? ((z[fila-1][columna+1]=="X") ? 1: 0): 0;
n+=(columna>0) ? ((z[fila][columna-1]=="X") ? 1: 0): 0;
n+=(columna<c-1) ? ((z[fila][columna+1]=="X") ? 1: 0): 0;
n+=(fila<f-1 and columna>0) ? ((z[fila+1][columna-1]=="X") ? 1: 0): 0;
n+=(fila<f-1) ? ((z[fila+1][columna]=="X") ? 1: 0): 0;
n+=(fila<f-1 and columna<c-1) ? ((z[fila+1][columna+1]=="X") ? 1: 0): 0;


end
puts "Bombas="+n.to_s