class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: (0..5), allow_nil: false }
  validates :rating, numericality: true
end
