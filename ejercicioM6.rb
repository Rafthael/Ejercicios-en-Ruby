#Programa de conversión Cº a Fº
#Derechos de Autor: Rafael Duarte Campos, Chimbarongo chile
#MÓDULO 6: INTRODUCCIÓN A LA PROGRAMACIÓN CON RUBY / C51810-O34959-M6
#Emprendimiento Digital con Tecnologías Web (BOTIC-SOFOF-20-14-06-0057)
# agosto del  2021
=begin
    El script debe ir de 0 a 127 grados Cº mostrando su conversión a Fº, uno por uno cada grado, todo esto lo hará en menos de 10 segundos. Imprimirá en un docx. el resultado de todas las conversiones.

El programa debe mostrar en consola
Nombre de estudiante
Módulo de ruby que está cursando
Año

Grados Cº = X , y su conversión a Fº es = Y

En el .docx debemos guardar los mismos datos.

FORMULA: (0 °C × 9/5) + 32 = 32 °F
=end

=begin Para la correcta ejecucion del programa es requerido instalar una gema llamada Caracal, el enlace gitHub 
es:https://github.com/urvin-compliance/caracal

Como instalar la gema: en la terminal o consola o CMD ingrese el siguiente codigo: gem install caracal.
Cuando se instale correctamnete ejecute este programa
=end

require "caracal"

Caracal::Document.save 'ResultadoConversion.docx' do |docx|
    # page 1
    docx.h1 'Ejercicio Grados a fahrenheit'
    docx.hr
    docx.h3 'Rafael Duarte Campos - Curso "Talento Digital chile" '
    docx.h4 'MÓDULO 6: INTRODUCCIÓN A LA PROGRAMACIÓN CON RUBY / C51810-O34959-M6'
    docx.h4 "Emprendimiento Digital con Tecnologías Web (BOTIC-SOFOF-20-14-06-0057)"
    docx.h4 'Año 2021'

puts "Nombre estudiante: Rafael Antonio Duarte Campos"
puts "MÓDULO 6: INTRODUCCIÓN A LA PROGRAMACIÓN CON RUBY / C51810-O34959-M6"
puts "Emprendimiento Digital con Tecnologías Web (BOTIC-SOFOF-20-14-06-0057)"
puts "Año Curso 2021"

grados = 0
maxGrados = 127
    for i in (grados..maxGrados) do
        docx.p  "Los grados #{i}Cº => conversión #{(i*9/5)+32}Fº"
    end

end