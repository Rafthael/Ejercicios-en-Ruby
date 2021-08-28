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
     def getNumero1
     @numero1
     end
     def getNumero2
     @numero2
     end
     def getNumero3
     @numero3
     end
     def setNumero1(valor)
     @numero1 = valor
     end
     def setNumero2(valor)
     @numero2 = valor
     end
     def setNumero3(valor)
     @numero3 = valor
     end
     def getPromedio
     (@numero1+@numero2+@numero3)/3
     end
     protected :getPromedio
    end
    # creación de un objeto a partir de la clase
    numero = Numero.new(10, 25, 30)
    numero.setNumero1(5)
    numero.setNumero2(6)
    numero.setNumero3(6)
    # usa los métodos del accesor, accedemos a los métodos
    n1 = numero.getNumero1()
    n2 = numero.getNumero2()
    n3 = numero.getNumero3()
    puts "El numero1 es #{n1}"
    puts "El numero2 es #{n2}"
    puts "El numero3 es #{n3}"

    prom = numero.getPromedio()
    puts "El promedio es #{prom}"
    #numero.getPromedio