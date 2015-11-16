Rails.application.routes.draw do
  get 'admins/index'

  get 'admins/show'

  get 'admins/destroy'

  resources :users

  get '/', to: "homes#index"

  

 
end
