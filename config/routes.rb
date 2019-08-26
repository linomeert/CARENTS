Rails.application.routes.draw do

  mount ActionCable.server => '/cable'
  get 'playdates/index'
  get 'playdates/edit'
  get 'playdates/new'
  get 'playdates/show'
  get 'user/index'
  get 'user/show'

  root to: 'pages#home'
  devise_for :users, controllers: { registrations: "registrations" }

  get "parents", to: "users#index"
  get "dashboard", to: "playdates#index"
  get "dashboard/playdate_requests", to: "playdates#playdate_requests"
  get "dashboard/pending_playdates", to: "playdates#pending_playdates"
  get "dashboard/past_playdates", to: "playdates#past_playdates"
  get "dashboard/upcoming_playdates", to: "playdates#upcoming_playdates"

  get "dashboard/playdate_requests/accept", to:"playdates#accept_playdate"
  get "dashboard/playdate_requests/reject", to:"playdates#reject_playdate"
  get "dashboard/playdate_requests/notified_acceptance", to:"playdates#notified_acceptance"


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
