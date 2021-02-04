class Pessoa
    def falar
        # return "Olá, pessoal"
        # ou (no ruby a ultima linha fica como retorno automaticamente)
        "Olá, pessoal!"
    end

    def meu_id
        "Meu ID é o #{self.object_id}"
    end
end

p1 = Pessoa.new
puts p1.meu_id

p2 = Pessoa.new
puts p2.meu_id