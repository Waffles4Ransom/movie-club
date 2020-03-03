Rails.application.routes.draw do
  root 'sessions#home'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/auth/:provider/callback' => 'sessions#omniauth'

  resources :comments
  resources :reviews

  resources :movies do 
    resources :reviews
  end 

  resources :users, except: [:new] do 
    resource :profile
  end 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
