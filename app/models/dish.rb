class Dish < ApplicationRecord
  belongs_to :country
  has_many :reviews
  has_one_attached :photo
end
