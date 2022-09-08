class FavouritesController < ApplicationController
  def create
    # Creates entry in the favourite for user/dish
    @favourite = Favourite.new
    @dish = Dish.find(params[:dish_id])
    @favourite.dish = @dish
    @favourite.user = current_user
    @favourite.save
  end

  def index
    # Return array user favourite instances. Association created user has_many dishes
    @favourites = current_user.favourites
  end

  def destroy
    # to do
  end
end
