Rails.application.routes.draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    # rota raiz
    # controller#action
    root to: 'welcome#index'
  
    get 'welcome/index'

    resources :coins
    # escrevendo rotas sem uso do resource
    # get '/coins', to: 'coins#index'
end
