class Review < ApplicationRecord
  belongs_to :dish
  belongs_to :user

  validates :content, presence: true, length: { minimum: 10 }
  validates :rating, presence: true, numericality: { greater_than_equal_to: 1, less_than_equal_to: 5 }
end
