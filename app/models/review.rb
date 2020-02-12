class Review < ApplicationRecord
  RATINGS = [0, 1, 2, 3, 4, 5]
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: RATINGS }
  validates :rating, numericality: { only_integer: true }
  belongs_to :restaurant
end
