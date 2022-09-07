class CookedDishesController < ApplicationController
  def create
    raise
    @cooked = CookedDishes.new(params[:id])


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
