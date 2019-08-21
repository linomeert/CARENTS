Rails.application.routes.draw do


  get 'playdates/index'
  get 'playdates/edit'
  get 'playdates/new'
  get 'playdates/show'
  get 'user/index'
  get 'user/show'
  devise_for :users
  root to: 'pages#home'
  get "parents", to: "users#index"
  get "dashboard", to: "playdates#index"

  resources :users do
    resources :children, only: [:new, :create, :edit, :update, :destroy]
    resources :conversations, only: [:new, :create, :destroy]
    resources :playdates, only: [:new, :create, :edit, :update, :destroy] do
      resources :reviews, only: [:new, :create]
    end
  end
  resources :conversations, only: [:show, :index] do
    resources :messages, only: [:new, :create, :index]
  end

  resources :playdates, only: [:index]
end
