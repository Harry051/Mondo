class CookedDish < ApplicationRecord
  belongs_to :dish
  belongs_to :user

  validates :dish, uniqueness: true
  validates :user_id, uniqueness: { scope: :dish_id }
end
