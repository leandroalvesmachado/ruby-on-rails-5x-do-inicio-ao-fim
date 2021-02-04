puts "Digite seu nome:"
nome = gets
puts "O seu nome é " + nome

puts "\n\n"
puts "====================="
puts "====================="

# imprime o que existe realmente dentro da variável
puts "Com o inspect >> " + nome.inspect

puts "\n\n"
puts "====================="
puts "====================="

# o .chomp é um método que remove o código de formatação \n do elemento ao qual foi aplicado
puts "(Usando chomp) Digite seu nome:"
nome = gets.chomp
puts "(Usando chomp) O seu nome é " + nome

puts "\n\n"
puts "====================="
puts "====================="

puts "Digite seu salário:"
salario = gets.chomp

# to_i para inteiro
# to_f para float
# to_s para string
puts salario.to_i
puts salario.to_f