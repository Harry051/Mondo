class Favourite < ApplicationRecord
  belongs_to :dish
  belongs_to :user
  # Validation ensures unique favourite user_id/dish_id combination
  validates :user_id, uniqueness: { scope: :dish_id }
end
