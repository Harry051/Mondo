class CookedDishesController < ApplicationController
  def create
    @cooked_dish = CookedDish.new
    @dish = Dish.find(params[:dish_id])
    @cooked_dish.dish = @dish
    @cooked_dish.user = current_user

    if @cooked_dish.save
      redirect_to user_path(current_user)
    else
      redirect_to root_path
    end
  end
end
