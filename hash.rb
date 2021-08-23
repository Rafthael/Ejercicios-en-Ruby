datos = {"nombre"=>'Luis', "apellidos"=>'Gonzales Romero', "edad"=>56}

puts datos["nombre"]+" "+datos["apellidos"]
#despliegue de datos segun el valor de la llave

puts datos.has_key? "nombre"
#verifica si existe la llave en el hash array

puts datos.has_value? "zale"
#verifica si existe un valor en el hash


#hash con arreglos
test = [{"aa"=> 1, "bb"=>2},{"cc"=> 1, "bb"=>2} ]

puts test[0].keys "bb"

