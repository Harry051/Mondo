class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @cooked_dishes = @user.cooked_dishes
  end
end
