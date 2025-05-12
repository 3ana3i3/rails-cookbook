class Category < ApplicationRecord
  validates :name, uniqueness: true

  has_many :bookmarks
  has_many :recipes, through: :bookmarks
end
