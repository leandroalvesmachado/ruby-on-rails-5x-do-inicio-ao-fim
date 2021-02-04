# Símbolos são strings imutáveis
# Símbolos sao muito usados em situações onde precisamos de um identificador
# pois eles garantem que seu uso não implicará na criação de novos objetos sempre que usados

# imprime o identificador do objeto
# cada string tem o seu identificador
puts "Leandro".object_id
puts "Leandro".object_id

puts "\n"
puts "==================="
puts "\n"

# para criar um simbolo
# todos tem o mesmo object_id
# todos tem o mesmo simbolo, identificador jackson
puts :jackson.object_id
puts :jackson.object_id

# hashes adoram símbolos
# hashes com símbolos
h = { :curso => "Rails" }
j = { curso: "Rails" }

puts "\n"
puts "==================="
puts "\n"

# uso de parênteses é opcional
puts ("Curso Rails")
puts "Curso Rails"

# Constantes
# sempre com letras uppercase
PI = 3.14