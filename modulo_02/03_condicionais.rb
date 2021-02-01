puts "\n"
puts "IF==================="
puts "\n"

# print tb imprime, mas não quebra a linha
puts "Digite o número:"
x = gets.chomp.to_i

if x > 2
    puts "x é maior que 2"
end

puts "\n"
puts "UNLESS==================="
puts "\n"

# UNLESS
# unless = igual a um if negado = if !valor (!if valor)
# a menos que
unless x >= 2
    puts "x é menor que 2"
else
    puts "x é maior que 2"
end

puts "\n"
puts "CASE==================="
puts "\n"

puts "Digite uma idade:"
idade = gets.chomp.to_i

case idade
when 0..2
    puts "bebê"
when 3..12
    puts "criança"
when 13..18
    puts "adolescente"
else
    puts "adulto"
end
    

puts "\n"
puts "TERNARIO==================="
puts "\n"

sexo = 'M'

if sexo == 'M'
    puts 'Masculino'
else
    puts 'Feminino'
end

puts sexo == 'M' ? 'Masculino' : 'Feminino'
sexo == 'M' ? (puts 'Masculino') : (puts 'Feminino')

