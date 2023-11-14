Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # Listar todos os restaurantes
  get 'restaurants', to: 'restaurants#index'
  # Criar um restaurante novo
  get 'restaurants/new', to: 'restaurants#new'
  post 'restaurants', to: 'restaurants#create'
  # Ver os detalhes de um restaurante
  get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  # Editar um restaurante
  get 'restaurants/:id/edit', to: 'restaurants#edit'
  patch 'restaurants/:id', to: 'restaurants#update'
  # Apagar um restaurante
  delete 'restaurants/:id', to: 'restaurants#destroy'
end
