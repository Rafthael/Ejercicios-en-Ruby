module Cafe
    
    def expreso
        puts "Cafe expresso"
    end

    def cortado
        puts "Cafe cortado"
    end

end

module Azucar
    def cucharadas_una
        puts "Una cucharada"
    end
    def cucharadas_dos
        puts "Dos cucharada"
    end
    def cucharadas_tres
        puts "Tres cucharada"
    end
end


class TipoCafe

    include Cafe
    include Azucar

    def Tomar_cafe1_1
        expreso
        cucharadas_una
    end

    def Tomar_cafe1_2
        expreso
        cucharadas_dos
    end

    def Tomar_cafe1_3
        expreso
        cucharadas_tres
    end

    def Tomar_cafe2_1
        cortado
        cucharadas_una
    end

    def Tomar_cafe2_2
        cortado
        cucharadas_dos
    end

    def Tomar_cafe2_3
        cortado
        cucharadas_tres
    end
   
end

preparar = TipoCafe.new
preparar.Tomar_cafe2_3


