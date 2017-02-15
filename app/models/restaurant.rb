class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = ['chinese', 'italian', 'french', 'japanese', 'belgian']


  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORIES, allow_nil:false}
end
