Rails.application.routes.draw do
  root 'tops#index'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :advisers, only: [:index]
end
