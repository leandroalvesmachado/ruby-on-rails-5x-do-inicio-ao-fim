# Métodos de instância
# são os métodos que só podem ser invocados a partir de um objeto, ou seja, uma classe instanciada

class Pessoa

    # método de instância
    # necessário ter uma instância do objeto criado
    # Ex:
    # p1 = Pessoa.new
    # puts p1.falar
    def falar
        "Olá, pessoal!"
    end

    # método de classe
    # não precisa de um objeto criado
    # não precisa instanciar
    # Ex: puts Pessoa.gritar("Hello")
    def self.gritar(texto)
        "#{texto}!"
    end
end

p1 = Pessoa.new
puts p1.falar


puts Pessoa.gritar("Hello")