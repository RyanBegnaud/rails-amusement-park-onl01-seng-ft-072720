Rails.application.routes.draw do
 get '/users/new', to: 'users#new'
 get '/signin', to: 'users#get_sign'
 post '/signin', to: 'users#signin'
 get '/logout', to: 'users#destroy'
 post 'rides', to: 'rides#create'
 resources :users 
 resources :attractions
 root 'users#home'
end
