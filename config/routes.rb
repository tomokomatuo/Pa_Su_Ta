Rails.application.routes.draw do
  
  root 'tops#index'
  resources :users do
    resources :comments
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :advisers, only: [:index]
  resources :relationships, only: [:create, :destroy]
  resources :conversations do
    resources :messages
  end
end
