#Llamamos la libreria para leer documentos csv
require "csv"
#Con la funcion read de CSV podemos hacer lectura de documentos en ruby
puts CSV.read("MOCK_DATA.csv")