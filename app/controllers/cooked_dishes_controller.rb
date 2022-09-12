class CookedDishesController < ApplicationController
  def create
    @cooked_dish = CookedDish.new
    @dish = Dish.find(params[:dish_id])
    @cooked_dish.dish = @dish
    @cooked_dish.user = current_user
    @cooked_dish.save
    redirect_to new_dish_review_path(@dish)
  end
end
