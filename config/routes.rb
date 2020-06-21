Rails.application.routes.draw do
  
  root 'tops#index'
  resources :users do
    member do
      get :following, :followers
    end
    resources :comments do
      collection do
        get 'search'  
      end
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :advisers, only: [:index]
  resources :relationships, only: [:create, :destroy]
  resources :conversations do
    resources :messages
  end
  get '*path', to: 'application#render_404'
end
