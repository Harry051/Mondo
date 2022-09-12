class Country < ApplicationRecord
  has_many :dishes
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def category_dishes(category)
    self.dishes.select do |dish|
      dish.categories.include?(category)
    end
  end

end
