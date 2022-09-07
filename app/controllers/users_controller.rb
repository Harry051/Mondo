class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    #  countries cooked start
    @countries = []
    current_user.cooked_dishes.each do |cd|
      @countries << cd.dish.country_id
    end
    # countries cooked end
    @cooked_dishes = @user.cooked_dishes # cooked dishes counter
  end
end
