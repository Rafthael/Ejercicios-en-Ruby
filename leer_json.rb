require "rubygems"
require "json"
require "pp" #sirve para mostrar todo el json captorado


json = File.read("clientes.json")
obj = JSON.parse(json)

pp obj #imprime por pantalla todo el json


nombre = obj["nombre"]
apellido_paterno = obj["apellidos"][0]
apellido_materno = obj["apellidos"][1]


puts "El cliente se llama #{nombre} #{apellido_paterno} #{apellido_materno} " 