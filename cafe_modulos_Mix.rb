module Cafe
    def Cafe.expreso
        puts "Cafe expresso"
    end

end

module Azucar
    def Azucar.cucharadas
        puts "Una cucharada"
    end
end


class TipoCafe

    include Cafe
    include Azucar
   
end

preparar = TipoCafe.new()
tomar=preparar.Azucar.cucharadas

puts tomar