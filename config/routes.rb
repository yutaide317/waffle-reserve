Rails.application.routes.draw do
  devise_for :users
  
  get 'maple_waffles/index'
  get 'lemon_waffles/index'
  get 'matcha_waffles/index'
  get 'choco_waffles/index'
  get 'plain_waffles/index'
  resources :orders, only: [:index, :new, :create]
  resources :plain_waffles, only: :index
  resources :choco_waffles, only: :index
  resources :matcha_waffles, only: :index
  resources :lemon_waffles, only: :index
  resources :maple_waffles, only: :index
  resources :users, only: :show
  root "orders#index"
end
