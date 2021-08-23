principal = "Suma de numeros"
puts principal

texto_en_pantalla="Ingrese un numero y precione enter"
puts texto_en_pantalla

numero1 = gets.chomp

texto_en_pantalla2="Ingrese otro numero y precione enter"
puts texto_en_pantalla2

numero2 = gets.chomp

numero1=numero1.to_i
numero2=numero2.to_i

def suma(numero1, numero2)
    puts "EL resultado de la suma es:  #{numero1+numero2} "
    return 
end

puts suma(numero1, numero2)

def nada(texto) 
    return "La palabra que escribiste es:  #{texto} "
end


puts "Ingrese un texto"
texto = gets.chomp

puts nada(texto)
