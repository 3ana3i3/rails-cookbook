class Bookmark < ApplicationRecord
  belongs_to :recipe
  belongs_to :category

  validates :comment, length {minimum : 6 }
  validates :recipe_id
end
