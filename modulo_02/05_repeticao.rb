i = 0
num = 5

while i <= num do
    puts "Contando... " + i.to_s
    i += 1
end

puts "\n"
puts "==================="
puts "\n"

(0..5).each do |i|
    puts "O valor lido foi: " + i.to_s
end

puts "\n"
puts "==================="
puts "\n"

['A', 'B', 'C'].each do |i|
    puts "O valor lido foi: " + i.to_s
end