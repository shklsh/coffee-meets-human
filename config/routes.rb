Rails.application.routes.draw do
  # get 'session/new'
  # get 'session/create'
  # get 'session/destroy'

  root :to => 'pages#home'              
  # get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  # resources :posts
  resources :users
  # resources :sessions
  # resources :pages

    get '/home' => 'pages#home'
    # home

    get '/browse' => 'posts#index'
    # browse

    get '/about' => 'pages#about', as: 'about'
    # about

  get '/posts' => 'posts#index'
  
  post '/posts' => 'posts#create'
  # # create
  get '/posts/new' => 'posts#new'
  # # new
  get '/posts/:id/edit' => 'posts#edit'
  # # edit
  get '/posts/:id' => 'posts#show'
  # # show
  patch '/posts/:id' => 'posts#update'
  # # update
  put '/posts/:id' => 'posts#update'
  # # update
  delete '/posts/:id' => 'posts#destroy'
  # # destroy

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
