Rails.application.routes.draw do
  resources :organization_roles
  resources :events
  resources :bookings
  resources :organizations
  resources :addresses
  resources :users, only: [:create, :show, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  post '/sign_up', to: 'users#create'
  
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  
end