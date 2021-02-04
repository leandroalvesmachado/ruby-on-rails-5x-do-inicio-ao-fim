# reescrevendo uma classe importante, cuidado, pois a classe string ja existe internamente
# chamado de = reabrindo a classe String (cuidado)
class String
    # criando um novo metodo ou função na classe string
    def inverter
        self.reverse
    end
end

puts "Leandro".inverter