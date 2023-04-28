Rails.application.routes.draw do
  resources :clientes
  resources :transacaos
  resources :agendamentos
  get "/clientes/app/assets/javascripts/cep.js", to: "application#cep"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
