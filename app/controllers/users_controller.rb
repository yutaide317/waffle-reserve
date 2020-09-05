class UsersController < ApplicationController
  def show
    @name = current_user.name 
    @orders = current_user.orders
  end
end
