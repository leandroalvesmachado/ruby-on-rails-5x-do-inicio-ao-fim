# Hash = uma lista do tipo chave => valor (o indice a gente informa)
# Em um hash você determina qual é a "chave" para acessar o valor, diferente do array

# Você pode criar hashes de duas formas
# tradicional
h = {"x" => 15, "curso" => "rails"}

# 1.9+ (maneira nova a partir dessa versão)
j = {"x": 15, "curso": "rails"}

# para acessar os elementos, use os []
puts h["curso"]