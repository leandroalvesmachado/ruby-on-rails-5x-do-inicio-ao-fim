# Strings sao determinadas por usar as aspas duplas ou simples
# x = "Curso de Rails"
# y = 'Curso de Ruby'

x = "Curso de Rails"
y = 'Curso de Ruby'

puts x
# String
puts x.class

puts y
# String
puts y.class

puts "\n"
puts "==================="
puts "\n"

puts "Concatenação de Strings"

# +
x = "rails"
y = "curso " + x
puts y

# << (shovel)
x = "rails"
y = "curso " << x
puts y

puts y << x # modifica o y

# diferença entre o  + e <<
# o + gera um novo objeto sempre que usado e o << adiciona ao objeto atual
# assim o mais se torna mais caro, novo objeto a todo momento

puts "\n"
puts "==================="
puts "\n"

puts "Interpolação. *Só funciona com aspas duplas"

x = "Leandro"
puts "Seu nome é #{x}"
puts "Seu nome é #{1+1}"

