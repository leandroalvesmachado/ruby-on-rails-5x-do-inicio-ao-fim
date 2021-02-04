# no ruby o nome da classe não é obrigado a ser o nome do arquivo

class Pessoa
    # o método initialize é um método especial que serve para indicarmos o que a classe
    # deve fazer ao ser instanciada/inicializada
    # para cada instancia o metodo initialize é executado
    # também pode usar parâmetros na inicialização
    def initialize
        puts "inicializando..."
    end

    def falar(nome)
        # return "Olá, pessoal"
        # ou (no ruby a ultima linha fica como retorno automaticamente)
        "Olá, #{nome}!"
    end

    # metodo com valor default no parametro
    def falar2(nome = "pessoal")
        "Olá, #{nome}!"
    end

    def falar3(texto = "Olá", texto2 = "Hello!")
        "#{texto} - #{texto2}"
    end
end

pessoa = Pessoa.new;
puts pessoa.falar('Leandro')
puts pessoa.falar2
puts pessoa.falar3
puts pessoa.falar3('Oi 1', 'Oi 2')