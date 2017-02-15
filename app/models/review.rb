class Review < ApplicationRecord
  belongs_to :restaurant

  RATING = [1, 2, 3, 4, 5]

  validates :content, presence: true
  validates :rating, presence: true, numericality: true, inclusion: { in: RATING, allow_nil: false }

end
