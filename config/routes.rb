Rails.application.routes.draw do

  root 'users#show'
  
  resources :ketos
  resources :pressures
  resources :glucoses
  resources :meals
  resources :users

  # resources :users do
  #   resources :ketos
  #   resources :pressures
  #   resources :glucoses
  #   resources :meals    
  # end
  
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

