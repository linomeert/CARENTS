Rails.application.routes.draw do
  get 'conversation/show'
  get 'user/index'
  get 'user/show'
  devise_for :users
  root to: 'pages#home'

  resources :users do
    resources :children, only: [:new, :create, :edit, :update, :destroy]
    resources :conversation, only: [:new, :create, :destroy, :show, :index] do
      resources :messages, only: [:new, :create, :index]
    end
    resources :playdates do
      resources :reviews, only: [:new, :create]
    end
  end

end
