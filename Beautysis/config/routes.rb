Rails.application.routes.draw do
  resources :clientes
  resources :transacaos
  resources :agendamentos
  get 'clientes/buscar_endereco', to: 'clientes#buscar_endereco'
  post 'consulta_cep', to: 'clientes#consulta_cep'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
