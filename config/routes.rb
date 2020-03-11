Rails.application.routes.draw do

  root 'pages#index'
  
  resources :users
  resources :posts
  resources :comments

  # root :to => 'pages#home'              
  # get 'signup', to: 'users#new', as: 'signup'
  # get '/login' => 'sessions#new', as: 'login'
  # post '/login' => 'session#create'
  # get '/logout' => 'sessions#destroy', as: 'logout'

  
  # resources :users do
  #   resources :posts
  # end

  # resources :sessions
  # resources :pages

  # get '/signup' => 'users#new'
  # post '/users' => 'users#create'

#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
