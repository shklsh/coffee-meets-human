Rails.application.routes.draw do
  # get 'session/new'
  # get 'session/create'
  # get 'session/destroy'

  root :to => 'pages#home'              
                                      # This path is where unauthorized users will be redirected_to.
  get '/login' => 'session#new'         # This will be our sign-in page.
  post '/login' => 'session#create'     # This will be the path to which the sign-in form is posted
  delete '/login' => 'session#destroy'  # This will be the path users use to log-out.

    get '/home' => 'pages#home'
    # home

    get '/browse' => 'posts#index'
    # browse

    get '/about' => 'pages#about', as: 'about'
    # about

    resources :posts, :users

  # get '/posts' => 'posts#index'
  
  # post '/posts' => 'posts#create'
  # # create
  # get '/posts/new' => 'posts#new'
  # # new
  # get '/posts/:id/edit' => 'posts#edit'
  # # edit
  # get '/posts/:id' => 'posts#show'
  # # show
  # patch '/posts/:id' => 'posts#update'
  # # update
  # put '/posts/:id' => 'posts#update'
  # # update
  # delete '/posts/:id' => 'posts#destroy'
  # # destroy

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
