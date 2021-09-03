class Estado
    def initialize(id,nombre)
        @id=id
        @nombre=nombre
    end
    def getId
        @id
    end
    def getNombre
        @nombre
    end
    def setId(valor)
        @id=valor
    end
    def setNombre(valor)
        @nombre=valor
    end
end
class Giro
    def initialize(id,descripcion)
        @id=id
        @descripcion=descripcion
    end
    def getId
        @id
    end
    def getDescripcion
        @descripcion
    end
    def setId(valor)
        @id=valor
    end
    def setDescripcion(valor)
        @descripcion=valor
    end
end
 class Direccion
    def initialize(id,calle,numero)
        @id=id
        @calle=calle
        @numero=numero
    end
    def getId
        @id
    end
    def getCalle
        @calle
    end
    def getNumero
        @numero
    end
    def setId(valor)
        @id=valor
    end
    def setCalle(valor)
        @calle=valor
    end
    def setNumero(valor)
        @numero=valor
    end
end
class Cliente
    def initialize(rut,nombre,direccion,giro)
        @rut=rut
        @nombre=nombre
        @direccion=direccion
        @giro=giro
    end
    def getRut
        @rut
    end
    def getNombre
        @nombre
    end
    def getDireccion
        @direccion
    end
    def getGiro
        @giro
    end
    def setRut(valor)
        @rut=valor
    end
    def setNombre(valor)
        @nombre=valor
    end
    def setDireccion(valor)
        @direccion=valor
    end
    def setGiro(valor)
        @giro=valor
    end
end
class Factura
    def initialize(folio,emisor,receptor,fecha,estado)
        @folio=folio
        @emisor=emisor
        @receptor=receptor
        @fecha=fecha
        @estado=estado
    end
    def getFolio
        @folio
    end
    def setFolio(valor)
        @folio=valor
    end
    def getEmisor
        @emisor
    end
    def setEmisor(valor)
        @emisor=valor
    end
    def getReceptor
        @receptor
    end
    def setReceptor(valor)
        @receptor=valor
    end
    def getFecha
        @fecha
    end
    def setFecha(valor)
        @fecha=valor
    end
    def getEstado
        @estado
    end
    def setEstado(valor)
        @estado=valor
    end
    def getDetalleProductos
        @detalleProductos
    end
    def setDetalleProductos(valor)
        @detalleProductos=valor
    end
    
end
class DetalleProductos
    def initialize()
         @producto=[]
         @total=0
    end
    def agregarLinea(linea)
        @producto.push(linea)
        @total=@total+linea.getSubtotal.to_i
   end
    def getLinea(linea)
        @producto[linea]
    end
    def calcularTotal()
        @total=0
        for x in @producto
            @total+=x.getSubtotal
        end 
    end
    def getProducto
        @producto
    end
    def setProducto(valor)
        @producto=valor
    end
    def getTotal
        @total
    end
    def setTotal(valor)
        @total=valor
    end
end
class LineaProducto
    def initialize(codigo,producto,cantidad,subtotal)
        @codigo=codigo
        @producto=producto
        @cantidad=cantidad
        @subtotal=subtotal
    end
    def getCodigo
        @codigo
    end
    def setCodigo(valor)
        @codigo=valor
    end
    def getProducto
        @producto
    end
    def setProducto(valor)
        @producto=valor
    end
    def getCantidad
        @cantidad
    end
    def setCantidad(valor)
        @cantidad=valor
    end
    def getSubtotal
        @subtotal
    end
    def setSubtotal(valor)
        @subtotal=valor
    end
    
end
class Producto
    def initialize(codigo,nombre)
        @codigo=codigo
        @nombre=nombre
    end
    def getCodigo
        @codigo
    end
    def setCodigo(valor)
        @codigo=valor
    end
    def getNombre
        @nombre
    end
    def setNombre(valor)
        @nombre=valor
    end
end
d1=Direccion.new(1,"Alameda",123)
g1=Giro.new(70,"Agricultura")
emisor=Cliente.new("1-2","Juan Perez",d1,g1)

d2=Direccion.new(4,"Pedro de Valdivia",788)
g2=Giro.new(79,"Construcción")
receptor=Cliente.new("9-0","Rosa Jimenez",d2,g2)

f1=Factura.new("1223",emisor,receptor,"01/01/2020",Estado.new(3,"Emitido"))
dp=DetalleProductos.new()
li1=LineaProducto.new(1,Producto.new(1,"Porotos"),4,100)
li2=LineaProducto.new(2,Producto.new(7,"Silla"),2,10)
li3=LineaProducto.new(3,Producto.new(19,"Vaso"),1,20)
dp.agregarLinea(li1)
dp.agregarLinea(li2)
dp.agregarLinea(li3)
dp.calcularTotal()
f1.setDetalleProductos(dp)


puts f1.getFolio
puts f1.getEmisor.getRut
puts f1.getEmisor.getDireccion.getCalle
puts f1.getEmisor.getDireccion.getNumero
puts f1.getEmisor.getGiro.getId
puts f1.getEmisor.getGiro.getDescripcion

puts f1.getReceptor.getRut
puts f1.getReceptor.getDireccion.getCalle
puts f1.getReceptor.getDireccion.getNumero
puts f1.getReceptor.getGiro.getId
puts f1.getReceptor.getGiro.getDescripcion

puts f1.getFecha
puts f1.getEstado.getId
puts f1.getEstado.getNombre
for i in (0..2)
    puts "*******"
    puts f1.getDetalleProductos.getLinea(i).getCodigo
    puts f1.getDetalleProductos.getLinea(i).getProducto.getNombre
    puts f1.getDetalleProductos.getLinea(i).getCantidad
    puts f1.getDetalleProductos.getLinea(i).getSubtotal
end
f1.getDetalleProductos.calcularTotal()
puts f1.getDetalleProductos.getTotal