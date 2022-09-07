class CountryController < ApplicationController

def index
  @countries = Country.all
  # The `geocoded` scope filters only flats with coordinates
  @markers = @countries.geocoded.map do |country|
    {
      lat: country.latitude,
      lng: country.longitude
    }
  end
end
