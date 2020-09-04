class UsersController < ApplicationController
  def show
    @name = current_user.Name 
    @orders = current_user.orders
  end
end
