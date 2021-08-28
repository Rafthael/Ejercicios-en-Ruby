
require "rest-client"
require "json"
require "pp"


respuesta = RestClient.get("https://mindicador.cl/api") #escaneamos la api para obtener registros
cuerpo = JSON.parse(respuesta) #parseamos el respuesta en json a array para la lectura

#pp cuerpo # Aqui obtenemos los datos ordenados de resultado a consulta a la url API

indicadores = ["uf", "dolar","euro"] #creamos un array con los valores que necesitamos desplegar
for x in indicadores do
    puts x +=": $"+cuerpo[x]["valor"].to_s #al ejecutar el for buscara en cuerpo los valores indicados en el indicadores
end

