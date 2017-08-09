class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  has_many :reviews, :dependent => :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES, allow_nil: false }

  def mean_reviews
    if self.reviews.size == 0
      0
    else
      sum = 0
      self.reviews.each do |review|
        sum += review.rating
      end
      (sum.to_f / self.reviews.size).round(1)
    end
  end

end
