require 'pg'
require 'faker'

(1..20).each do |id|
  User.create!(
      id: id, 
      name: Faker::Name.name,
      email: Faker::Internet.email,
      password: "qwerty", 
      password_confirmation: "qwerty",
  )
end

(1..10).each do |id|
  Category.create!(
    id: id,
    title: Faker::Commerce.department, 
    body: Faker::Lorem.sentence(word_count: 5),
  )
end

(1..30).each do |id|
  Subcat.create!(
    id: id,
    title: Faker::Commerce.brand,
    category_id: Category.find(rand(1..10)).id,
  )
end

(1..200).each do |id|
  Item.create!(
    id: id,
    body: Faker::Lorem.sentence(word_count: 30),
    title: Faker::Commerce.product_name,
    user_id: User.find(rand(1..20)).id,
    price: Faker::Commerce.price(range: 0..100), 
    category_id: Category.find(rand(1..10)).id,
    subcat_id: Subcat.find(rand(1..30)).id, 
  )
end


