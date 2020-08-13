class OrdersController < ApplicationController
  def index
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
    else
      render :new
    end

  end

  def order_params
    params.require(:order).permit(:name, :email, :plain, :choco, :matcha, :lemon, :maple, :signup_at)
  end
end
