
#for como bucle

for x in 0..10
    puts "#{x} paso por aquí, con datos definidos"
end

for x in [1, 2, 3, 4] do
    puts "#{x} con arreglo"
end

for x  in  0..6
    if  x < 3 then
       next
    end
    puts "Value of x is : #{x}"
 end