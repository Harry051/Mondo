class PagesController < ApplicationController
  def home
    @countries = Country.all
    # Add category filter to the country
    if params[:category]
      @countries = @countries.select do |country|
        country.dishes.any? { |dish| dish.categories.include?(params[:category]) }
      end
    end

    @markers = @countries.map do |country|
      if country.geocoded?
        {
          lat: country.latitude,
          lng: country.longitude,
          # info_window: render_to_string(partial: "info_window", locals: {country: country}),
          image_url: "<a href=\"/dishes/#{params[:category] ? country.category_dishes(params[:category]).sample.id : country.dishes.sample.id}\"> <img src=\"#{country.photo.url}\" width=\"30\" height=\"30\" style=\"border-radius: 50%\"> </a>"
        }
      end
    end
    @markers = @markers.compact

    respond_to do |format|
      format.html
      format.json # Follow the classic Rails flow and look for a create.json view
    end
  end
end
