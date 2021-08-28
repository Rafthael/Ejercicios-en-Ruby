class Producto
    def initialize(codigo, nombre, color, precio)
        @codigo = codigo
        @nombre = nombre
        @color = color
        @precio = precio
    end

        def mostrarCodigo
            @codigo
        end
        def mostrarNombre
            @nombre
        end
        def mostrarColor
            @color
        end
        def mostrarPrecio
            @precio
        end
end

class Productos

    def initialize
        @prods=[]
    end

    def agregar_productos(codigo,nombre,color, precio)
        @prods.push(Producto.new(codigo,nombre,color,precio))
    end

    def imprimirProductos
        for i in (0..@prods.length-1)
            puts @prods[i].mostrarCodigo.to_s+" | "+@prods[i].mostrarNombre+" | "+@prods[i].mostrarColor+" | "+@prods[i].mostrarPrecio.to_s
        end

    end
end

prods=Productos.new

loop do 
    puts "Ingrese un Codigo del producto"
    codigo = gets.chomp
    puts "Ingrese un Nombre del producto"
    nombre = gets.chomp
    puts "Ingrese un Color del producto"
    color = gets.chomp
    puts "Ingrese un Precio del producto"
    precio = gets.chomp
    prods.agregar_productos(codigo, nombre, color, precio)
    puts "###### Producto almacenado correctamente!#########"
    puts ""
    puts ""
    puts "¿Desea agregar otro producto? S=si, N=n"
    puts ""
    puts ""
    opcion = gets.chomp
        if opcion=="n" 
            puts ""
            puts ""
            puts "Los productos agregados al sistema fueron..."
            prods.imprimirProductos
            puts ""
            puts "#####FIN DEL PROGRAMA #######"
            break
        end
end

