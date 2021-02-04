# criando array
v = [1, 3, 5, 6, 7, 9]

# percorrendo os elementos do array
v.each do |item|
    puts item
end

# acessando indice do array
puts "Acessando indice 0: " + v[0].to_s

puts "\n"
puts "==================="
puts "\n"

# criando array de outra forma
v1 = Array.new

# inserindo dados no array
v1.push(4)
v1.push('Jack')

v1.each do |item|
    puts item
end

puts "\n"
puts "==================="
puts "\n"

v2 = [[11, 12, 13], [21, 22, 23], [31, 32, 33]]

v2.each do |externo|
    externo.each do |interno|
        puts interno
    end
end