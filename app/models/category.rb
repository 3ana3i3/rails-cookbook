class Category < ApplicationRecord
  validates :name, uniqueness: true

  has_many :bookmarks
  has_many :recipes, through: :bookmarks
  has_one_attached :photo
end
