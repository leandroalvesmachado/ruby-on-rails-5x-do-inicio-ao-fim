Rails.application.routes.draw do
  namespace :admins_backoffice do
    get 'welcome/index'
  end
  namespace :profiles_backoffice do
    get 'welcome/index'
  end
  namespace :admins_bacloffice do
    get 'welcome/index'
  end
  devise_for :profiles
  devise_for :admins
  root to: 'welcome#index'
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
