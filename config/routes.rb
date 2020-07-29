Rails.application.routes.draw do
  get 'orders/index'
  root "orders#index"
end
