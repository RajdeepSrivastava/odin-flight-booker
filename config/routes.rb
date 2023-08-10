Rails.application.routes.draw do
  get 'bookings/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "/index", to: 'flights#index'

  root 'flights#index'
  get '/flights', to: 'flights#index'
  get '/flights', to: 'flights#index'

  # resources :flights, only: [:index]

  resources :bookings, only: [:new, :create]

end
