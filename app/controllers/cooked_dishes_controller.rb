class CookedDishesController < ApplicationController
  def create
    @cooked_dish = CookedDish.new
    @dish = Dish.find(params[:dish_id])
    @cooked_dish.dish = @dish
    @cooked_dish.user = current_user

    if @cooked_dish.save
      redirect_to root_path
    end



    # @review = Review.new(review_params)
    # @list = List.find(params[:list_id])
    # @review.list = @list
    # if @review.save
    #   redirect_to list_path(@list)
    # else
    #   @bookmark = Bookmark.new
    #   render 'lists/show', status: :unprocessable_entity
    # end
  end
end
