Rails.application.routes.draw do
  get 'welcome/index'
  resources :orders
  resources :deliveries
  resources :locations
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #groot the root!
  root to: 'welcome#index'
end
