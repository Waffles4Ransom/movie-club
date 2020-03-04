Rails.application.routes.draw do
  root 'sessions#home'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/auth/:provider/callback' => 'sessions#omniauth'

  
  resources :reviews, only: [:index] do 
    resources :comments, except: [:index]
  end 

  resources :movies do 
    resources :reviews
  end 

  resources :users, except: [:new, :destroy] do 
    resource :profile, except: [:show, :destroy]
    resources :reviews, only: [:index]
  end 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
