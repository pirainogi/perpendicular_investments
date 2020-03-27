Rails.application.routes.draw do

  get 'startup/index'
  resources :users, except: :index
  resources :investors


  get '/login', to: "sessions#login", as: "login"
  post '/sessions', to: "sessions#create"
  delete 'logout', to: "sessions#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
