Rails.application.routes.draw do

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  resources :comments
  resources :reviews
  resources :movies
  resources :users, except: [:new]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
