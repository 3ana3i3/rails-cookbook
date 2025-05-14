require 'faker'

# Fakerのunique生成をリセット（再実行時の重複を防ぐ）
Faker::UniqueGenerator.clear

# カテゴリーの作成（すでに存在していれば作成しない）
["Breakfast", "Italian", "Japanese", "Indian"].each do |category_name|
  Category.find_or_create_by(name: category_name)
end

20.times do
  category = Category.order('RANDOM()').first
  name = Faker::Food.dish
  next if Recipe.exists?(name: name)  # 重複があればスキップ
  Recipe.create!(
    name: name,
    description: Faker::Food.description,
    image_url: Faker::Avatar.image,
    rating: rand(1..5),
    category: category
  )
end

# ブックマークを作成
Recipe.find_each do |recipe|
  Bookmark.create!(
    recipe: recipe,
    category: recipe.category,  # Category オブジェクトをそのまま
    comment: "This is a great recipe for #{recipe.category.name.downcase}!"
  )
end

puts "Seeding completed!"
