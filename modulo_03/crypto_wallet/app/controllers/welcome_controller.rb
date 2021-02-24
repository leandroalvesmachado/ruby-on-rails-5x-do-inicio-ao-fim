class WelcomeController < ApplicationController
  def index
    # para passar dados do controller para a view utilizar o @ na variável
    # variável de instância/sessão
    @nome = "Leandro"

    # Query Params para Requests, capturando params da url
    @nome_params = params[:nome] ? params[:nome] : 'sem query params'

    # criando cookie
    # mesmo comentando a linha, cookie tem uma duração
    cookies[:curso] = "[COOKIE] Curso de Ruby on Rails - Leandro Alves"
    session[:curso] = "[SESSION] Curso de Ruby on Rails - Leandro Alves"
  end
end
