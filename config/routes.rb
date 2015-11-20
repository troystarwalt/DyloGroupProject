Rails.application.routes.draw do
  root to: "homes#index"

  get 'admins/index'

  get 'admins/show'

  get 'admins/destroy'

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"

  resources :users

  get '/contact_us', to: "users#new"

  get '/building', to: "homes#building"

 
end
