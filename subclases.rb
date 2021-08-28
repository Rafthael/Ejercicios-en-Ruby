class Numero
    #Acá irá el código, atributos y métodos
    # constructor
     def initialize(numero1,numero2,numero3)
        #@numero1, @numero2 = numero1, numero2
        @numero1 = numero1
        @numero2 = numero2
        @numero3 = numero3
    end
    # con el accessor se accederá a estos métodos
     def getPromedio
        (@numero1+@numero2+@numero3)/3
     end
end

#declara una clase de herencia, Numero es una subclase de otroNumero
class OtroNumero < Numero
     def printPromedio
     @promedio = (@numero1+@numero2+@numero3)/3
     puts "El promedio del otro número es #{@promedio}"
     end
end

    # creación de un objeto a partir de la clase
    numero = OtroNumero.new(50, 20, 30)
    # usa los métodos del accesor, accedemos a los métodos
    numero.printPromedio()
    #numero.getPromedio