Rails.application.routes.draw do
  get 'sessions/new'
  root 'users#new'
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/calculate', to: 'users#calculate'
  post '/calculate', to: "users#calculate"
  get '/users', to: "users#show_users"
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
