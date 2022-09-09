class ReviewsController < ApplicationController
  def new
    @dish = Dish.find(params[:dish_id])
    @cooked_dish = CookedDish.new
    @review = Review.new
  end

  def create
    @dish = Dish.find(params[:dish_id])
    @review = Review.new(review_params)
    @review.dish = @dish
    @review.user = current_user
    if @review.save
      redirect_to user_path(@review.user)
    else
      render "reviews/new", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
