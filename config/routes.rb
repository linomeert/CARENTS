Rails.application.routes.draw do

  get 'user/index'
  get 'user/show'
  devise_for :users
  root to: 'pages#home'
  get "parents", to: "users#index"
  get "dashboard", to: "playdates#index"
  resources :users do
    resources :children, only: [:new, :create, :edit, :update, :destroy]
    resources :conversations, only: [:new, :create]

    resources :playdates, only: [:new, :create, :edit, :update, :destroy] do
      resources :reviews, only: [:new, :create]
    end
  end
  resources :playdates, only: [:index]
  resources :conversations, only: [:new, :create, :destroy, :show, :index] do
    resources :messages, only: [:new, :create, :index]
  end
end
