$global_variable=10
variable_local=0

class Global
    def print_global
        puts "Esta es una variable global #{$global_variable}"
    end
end

class Local
    def print_global
        puts "Esta es una variable local #{variable_local}"
    end
    #esta accion generara un error ya que la variable no ingresa a la definicion por medio de la clase
    #ya que la variable deberia global local deberia ser $variable_local, con eso se quita el error
end    


class1obj=Global.new
class1obj.print_global

class2obj=Local.new
class2obj.print_global