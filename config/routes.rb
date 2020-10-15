Rails.application.routes.draw do
  devise_for :users
  resources :orders, only: [:index, :new, :create]
  resources :plain_waffles, only: :index
  resources :choco_waffles, only: :index
  resources :matcha_waffles, only: :index
  resources :lemon_waffles, only: :index
  resources :maple_waffles, only: :index
  resources :users, only: :show
  root "orders#index"
end
