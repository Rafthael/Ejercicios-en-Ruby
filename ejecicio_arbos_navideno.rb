#dibujar arbol navideño sin array y con array, utilizando for-.

#arbol sin array
puts "Arbol navideño impreso sin arreglo y  dibujado directamente"
puts "****************"
puts "  ************"
puts "    ********"
puts "     *****"
puts "      ***"
puts "       *"
puts ""


#Arbol navideño con array
arbol=["****************","  ************","    ********","     *****", "      ***", "       *", ""]
puts "Arbol navideño impreso con arreglo y  dibujado directamente"
puts arbol[0]
puts arbol[1]
puts arbol[2]
puts arbol[3]
puts arbol[4]
puts arbol[5]
puts arbol[6]

#arbol impreso con array y for
puts "Arbol impreso con array y for"
x=arbol.length
for i in (0..x-1) do
    puts arbol[i]
end

#arbol creado dinamicamente
asterisco=""
espacio=""
resultado =""
puts "Creando arbol de navidad dinamicamente "

for i in (0..10) do
    
    for x in (i..10) do
        asterisco= asterisco+"*"
    end
    for z in (0..(i/2).round(1)) do
        espacio=espacio + " "
    end
    puts espacio+asterisco+espacio

    asterisco=""
    espacio=""
end

#realizando arbol con definiciones dinamicamente

def arbol(ancho) 
    fin=""
    asterisco=""
    espacio=""
    for i in (0..ancho) do
    
        for x in (i..ancho) do
            asterisco+="*"
        end
        for z in (0..(i/2).round(1)) do
            espacio+=" "
        end
        fin += espacio+asterisco+espacio+"\n"
        asterisco=""
        espacio=""
    end

    return fin
end


ancho = 50
puts "Arbol creado automaticamente atravez de una funcion..."
puts arbol(ancho)