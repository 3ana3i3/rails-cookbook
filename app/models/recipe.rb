class Recipe < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :rating, inclusion: { in: 0..5 }

  has_many :bookmarks
  has_many :categories, through: :bookmarks
end
