class FavouritesController < ApplicationController
  def create
    # Creates entry in the favourite for user/meal
    @favourite = Favourite.new
    @dish = Dish.find(params[:dish_id])
    @favourite.dish = @dish
    @favourite.user = current_user
    @favourite.save
  end
end
