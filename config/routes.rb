Rails.application.routes.draw do
  resources :pressures
  resources :glucoses
  resources :meals
  resources :users
  root 'meals#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

