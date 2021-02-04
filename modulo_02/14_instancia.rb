# Variáveis de instância
# são as variáveis que existem apenas na instância do objeto (em todo o objeto), ou seja
# cada objeto possui seus próprios valores em tais variáveis
# variáveis de intância são precedidas de um @
# disponivel em todos os objetos da classe Pessoa

class Pessoa
    def initialize(nome_fornecido = "indigente")
        @nome = nome_fornecido
    end

    def imprimir_nome
        @nome
    end

    def falar
        "Olá, pessoal!"
    end
end

p1 = Pessoa.new
puts p1.imprimir_nome


p2 = Pessoa.new("Leandro")
puts p2.imprimir_nome
