class Dish < ApplicationRecord
  belongs_to :country
  has_many :reviews, dependent: :destroy
  has_one_attached :photo
  has_many :favourites, dependent: :destroy
  has_many :users, through: :favourites
end
