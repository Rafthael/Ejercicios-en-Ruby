class Alumnos

    #agregarmos los valores por metodo SET
    def setNombre(nombre)
       @nombre= nombre
    end

    def setCarrera(carrera)
        @carrera= carrera
    end
    def setEdad(edad)
        @edad= edad
    end

    #obtener los valores por metodo GET
    def getNombre
        @nombre
    end
    def getCarrera
        @carrera
    end
    def getEdad
        @edad
    end


end

    #creacion del objeto a partir de la clase
    estudientes=Alumnos.new()
    estudientes.setNombre("Luis Gomez")
    estudientes.setCarrera("Construcción")
    estudientes.setEdad(24)

    n=estudientes.getNombre()
    c=estudientes.getCarrera()
    e=estudientes.getEdad()

    puts "El estudiente #{n}, se encuentra estudiando la carrera de #{c}, a la edad de #{e} años."
