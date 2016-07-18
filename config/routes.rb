Rails.application.routes.draw do

  root 'page#homepage'
  get '/register' => 'users#register'
  get '/login' => 'users#login'
  post '/login' => 'session#create'
  post '/users' => 'users#create'
  get '/profile' => 'page#profile'
  get '/logout' => 'session#destroy'
  get '/addphoto' => 'photo#addphoto'
  post '/addphoto' => 'photo#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
