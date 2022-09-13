class Review < ApplicationRecord
  belongs_to :dish
  belongs_to :user
  has_one_attached :photo # to attach images linked in Cloudinary

  validates :content, presence: true, length: { minimum: 10 }
  validates :rating, presence: true, numericality: { in: 1..5 }
end
