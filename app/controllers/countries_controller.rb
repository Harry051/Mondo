class CountryController < ApplicationController
  def index
    @countries = Country.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @countries.geocoded.map do |country|
      {
        lat: country.latitude,
        lng: country.longitude,
        info_window: render_to_string(partial: "info_window", locals: {country: country}),
        image_url: helpers.asset_url("mappin0.png")
      }
    end
  end
end
