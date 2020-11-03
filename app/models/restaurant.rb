class Restaurant < ApplicationRecord
  CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates  :categories, inclusion: { in: CATEGORIES }
end
