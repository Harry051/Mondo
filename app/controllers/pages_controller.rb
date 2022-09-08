class PagesController < ApplicationController
  def home
    @countries = Country.all
    @markers = @countries.geocoded.map do |country|
      {
        lat: country.latitude,
        lng: country.longitude,
        # info_window: render_to_string(partial: "info_window", locals: {country: country}),
        image_url: "<a href=\"/dishes/#{country.dishes.sample.id}\"> <img src=\"#{country.photo.url}\" width=\"30\" height=\"30\" style=\"border-radius: 50%\"> </a>"
        # helpers.asset_url("mappin0.png")"

      }
    end
  end
end
