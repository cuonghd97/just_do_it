Rails.application.routes.draw do
  get '/signup', to: 'users#new'
  post '/signup', to: 'user#create'
  resources :users
end
