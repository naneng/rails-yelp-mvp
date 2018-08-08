class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates_associated :restaurant
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :rating, numericality: true
end
