class Category < ApplicationRecord
    validates :name, presence: true, uniquness:true
end
