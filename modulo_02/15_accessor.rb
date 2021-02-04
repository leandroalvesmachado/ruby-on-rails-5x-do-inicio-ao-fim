# Accessors
# servem como atalhos para declaração de atributos de uma classe
# attr_accessor: nome
# a simples declaração acima te dá um "getter" e um "setter" para nome da classe em questão

class Pessoa
    # atributos
    # attr_accessor :nome

    def initialize(nome = "teste")
        @nome = nome
    end

    # igual ao attr_accessor customizado
    # def set_nome=(nome)
    #     @nome = nome
    # end

    # def get_nome=(nome)
    #     @nome
    # end

    def falar
        "Olá, pessoal!"
    end
end

p1 = Pessoa.new

# possivel devido ao attr_accessor (getters and setters)
p1.nome = "Leandro" # setter
puts p1.nome # getter