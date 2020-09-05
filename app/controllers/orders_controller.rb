class OrdersController < ApplicationController
  before_action :move_to_index, except: :index

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

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

  def order_params
    params.require(:order).permit(:plain, :choco, :matcha, :lemon, :maple, :signup_at, :time, :total).merge(user_id: current_user.id)
  end
end
