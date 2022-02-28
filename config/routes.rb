Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#index'
  get 'homes/index'
  resources :objectives
  resources :rules
  resources :successes,only: [:index, :new, :destroy]
end
