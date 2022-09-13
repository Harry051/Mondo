class FavouritesController < ApplicationController
  def create
    # Creates entry in the favourite for user/dish
    @review = Review.new
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
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_to favourite_path(@favourite), status: :see_other
  end

  # private

  # def favourite_params
  #   params.require(:favourite).permit(:dish_id, :user_id)
  # end
end
