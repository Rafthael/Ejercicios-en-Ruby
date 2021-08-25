class Radio
    #metodos de inicialización del contructor
    def initialize(nombre, dial, transmitiendo)
         #definismo variables globales   
         @nombre = nombre
         @dial= dial
         @transmitiendo = transmitiendo  

    end
   
    #assesor que accedera a esos metodos
    def printNombre
        @nombre
    end
    def printDial
        @dial
    end
    def printTransmitiendo
        @transmitiendo
    end
end

    #creacion del objeto a partir de la clase
    radio1=Radio.new("Romantica", "101.5","SI")
    n= radio1.printNombre()
    d= radio1.printDial()
    t= radio1.printTransmitiendo()

    puts "El nombre de la radio es: #{n}, el dial #{d}, ¿Esta transmitiendo? #{t}"