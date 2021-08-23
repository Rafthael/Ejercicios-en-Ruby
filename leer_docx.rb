#llamamos a la libreria para leer archivos docx
require "docx"
#parametros para obtener el documento y cargarlos en la variable doc
doc = Docx::Document.open("Ejemplo.docx")
#Utilizamos metodo each para leer linea por linea el documento he imprimirla por pantalla
doc.paragraphs.each do |lectura|
    puts lectura
end

