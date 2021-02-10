class WelcomeController < ApplicationController
  def index
    # para passar dados do controller para a view utilizar o @ na variável
    # variável de instância/sessão
    @nome = "Leandro"
  end
end
