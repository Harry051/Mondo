class Dish < ApplicationRecord
  belongs_to :country
  has_one_attached :photo
  has_many :favourites
end
