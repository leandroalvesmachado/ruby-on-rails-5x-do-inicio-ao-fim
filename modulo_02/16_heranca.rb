# Usa-se o menor "<" para indicar a herança
# No ruby não existe herança múltipla

class Pessoa
    attr_accessor :nome, :email
end


class PessoaFisica < Pessoa
    attr_accessor :cpf

    def falar(texto)
        texto
    end
end


class PessoaJuridica < Pessoa
    attr_accessor :cnpj

    def pagar_fornecedor
        "Pagando fornecedor."
    end
end

p1 = Pessoa.new
p1.nome = "Leandro P" #setter
p1.email = "leandrop@gmail.com" #setter

p2 = PessoaFisica.new
p2.nome = "Leandro PF" #setter
p2.email = "leandropf@gmail.com" #setter
p2.cpf = "01234567890" #setter

p3 = PessoaJuridica.new
p3.nome = "Leandro PJ" #setter
p3.email = "leandropj@gmail.com" #setter
p3.cnpj = "1111111111" #setter

# imprime o objeto todo
puts p1.inspect
puts "================="
puts p2.inspect
puts "================="
puts p3.inspect

# saidas
# <Pessoa:0x00005595a0267a10 @nome="Leandro P", @email="leandrop@gmail.com">
# <PessoaFisica:0x00005595a0267830 @nome="Leandro PF", @email="leandropf@gmail.com", @cpf="01234567890">
# <PessoaJuridica:0x00005595a0267678 @nome="Leandro PJ", @email="leandropj@gmail.com", @cnpj="1111111111">