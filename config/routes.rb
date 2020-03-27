Rails.application.routes.draw do

  resources :users, except: :index
  resources :investors


  get '/login', to: "sessions#login"
  post '/sessions', to: "sessions#create"
  delete 'logout', to: "sessions#logout"
  root "startup#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
