Rails.application.routes.draw do

  root 'page#homepage'
  get '/congratz' => 'users#congratz'
  get '/sorry' => 'users#sorry'
  get '/register' => 'users#register'
  get '/login' => 'users#login'
  post '/login' => 'session#create'
  post '/reg' => 'users#create'
  get '/profile' => 'page#profile'
  get '/logout' => 'session#destroy'
  get '/addphoto' => 'photo#addphoto'
  post '/addphoto' => 'photo#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
