Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "/index", to: 'flights#index'

  root 'flights#index'

  # resources :flights, only: [:index]
end