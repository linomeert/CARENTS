Rails.application.routes.draw do

  mount ActionCable.server => '/cable'
  get 'playdates/index'
  get 'playdates/edit'
  get 'playdates/new'
  get 'playdates/show'
  get 'user/index'
  get 'user/show'

  root to: 'pages#home'
  devise_for :users


  get "parents", to: "users#index"
  get "dashboard", to: "playdates#index"

  resources :users, except: [:destroy] do

    resources :children, only: [:new, :create, :edit, :update, :destroy]
    resources :conversations, only: [:new, :create, :destroy], param: :slug
    resources :playdates, only: [:new, :create, :edit, :update, :destroy] do
      resources :reviews, only: [:new, :create]
    end
  end
  resources :conversations, only: [:show, :index] do
    resources :messages, only: [:new, :create, :index]
  end

  resources :playdates, only: [:index]
end
