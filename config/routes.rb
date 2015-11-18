Rails.application.routes.draw do
  root to: "homes#index"

  get 'admins/index'

  get 'admins/show'

  get 'admins/destroy'

  resources :users

  get '/contact_us', to: "users#new"

  get '/building', to: "homes#building"

 
end
