Rails.application.routes.draw do

  resources :trips
  resources :activities
  resources :destinations
  resources :users

  get '/', to: 'application#index', as: 'home'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete 'sessions', to: "sessions#destroy"
  post '/activities/new', to: "activities#add_to_trip", as: '/activities/add_to_trip'
  delete '/activities/:id', to: "activities#delete_from_trip", as: '/activities/delete_from_trip'

  # get "/", to: "application#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
