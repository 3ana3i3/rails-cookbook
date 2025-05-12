class Recipe < ApplicationRecord
 validates :name, presence: true, uniquness: true
 validates :description, presence: true
 validates :rating, inclusion{ in: 0..5 }
end
