Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#index'
  get 'homes/index'
  resources :objectives, :rules
  resources :successes,only: [:index, :new, :create, :destroy]
  #resources :successes
end
