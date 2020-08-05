class OrdersController < ApplicationController
  def index
  end

  def new
  end

  def create
    Order.create(order_params)

  end

  def order_params
    params.permit(:name, :email, :plain, :choco, :matcha, :lemon, :maple, :signup_at)
  end
end
