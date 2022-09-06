class Country < ApplicationRecord
  has_many :dishes
  has_one_attached :photo
end
