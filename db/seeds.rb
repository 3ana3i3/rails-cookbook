# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
# db/seeds.rb
puts 'Cleaning database...'
Recipe.destroy_all

puts 'Creating recipes...'

Recipe.create!(
  name: 'Prawn Dumplings',
  description: 'Steamed dumplings filled with seasoned prawns and served with dipping sauce.',
  rating: 4)

Recipe.create!(
  name: 'Sushi',
  description: 'Assorted sushi rolls including tuna, salmon, and avocado.',
  rating: 4
)

Recipe.create!(
  name: 'Tacos',
  description: 'Crispy taco shells filled with spiced beef, lettuce, and cheese.',
  rating: 4
)

Recipe.create!(
  name: 'Butter Chicken Curry',
  description: 'Creamy Indian curry made with tender chicken in a spiced tomato sauce.',
  rating: 4
)

puts 'Finished'
