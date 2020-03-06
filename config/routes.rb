Rails.application.routes.draw do
  get 'welcome/index'
  resources :orders
  resources :deliveries
  resources :locations
  resources :users, only: [:new, :create]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #groot the root!
  root to: 'sessions#welcome'
end
