class ReviewsController < ApplicationController
  def new
    @dish = Dish.find(params[:dish_id])
    @review = Review.new
    @favourite = Favourite.new
  end

  def create
    @dish = Dish.find(params[:dish_id])
    @review = Review.new(review_params)
    @favourite = Favourite.new
    @review.dish = @dish
    @review.user = current_user
    if @review.save
      redirect_to new_dish_review_path(@review)
    else
      render "reviews/new", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :photo)
  end
end
