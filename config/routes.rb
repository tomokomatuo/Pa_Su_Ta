Rails.application.routes.draw do
  
  root 'tops#index'
  resources :users do
    resources :comments
    member do
      get :following, :followers
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :advisers, only: [:index]
  resources :relationships, only: [:create, :destroy]
  resources :conversations do
    resources :messages
  end
  get '*not_found' => 'application#routing_error'
  post '*not_found' => 'application#routing_error'
end
