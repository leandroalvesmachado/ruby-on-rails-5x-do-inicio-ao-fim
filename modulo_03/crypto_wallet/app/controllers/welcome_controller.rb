class WelcomeController < ApplicationController
  def index
    # para passar dados do controller para a view utilizar o @ na variável
    # variável de instância/sessão
    @nome = "Leandro"

    # Query Params para Requests, capturando params da url
    @nome_params = params[:nome] ? params[:nome] : 'sem query params'
  end
end
