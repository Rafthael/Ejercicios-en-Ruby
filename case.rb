

#case para definir segun el caso selccionado actua
print "Adivina el nombre con c, m, j, v, el nombre esta con minusculas:"
nombre = gets.chomp

case nombre
when "carlos"
    puts "el nombre es  #{nombre}"
when "mario"
    puts "el nombre es  #{nombre}"
when "jose"
    puts "el nombre es  #{nombre}"
when "valeria"
    puts "el nombre es  #{nombre}"
else 
    puts "jajaja no le achuntaste! el nombre no es correcto  #{nombre}"
end