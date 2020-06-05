require 'sidekiq/web'

Rails.application.routes.draw do
  resources :meetings do
  end

  devise_for :users
  get 'active-sessions', to: "meetings#active_sessions"
  root to: 'home#index'
  resources :users, only: [:index]
  resources :menu, only: [:index]
end