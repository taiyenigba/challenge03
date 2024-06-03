# challenge_faker.rb

require 'faker'
require_relative 'ar.rb'

# Creating 10 new categories
10.times do
  category = Category.create(
    name: Faker::Commerce.department(1, true),
    description: Faker::Lorem.sentence(10)
  )

  # Creating 10 new products for each category
  10.times do
    Product.create(
      name: Faker::Commerce.product_name,
      description: Faker::Lorem.sentence(10),
      price: Faker::Commerce.price(10.0..100.0),
      stock_quantity: Faker::Number.between(1, 100),
      category: category
    )
  end
end

puts "10 categories and 100 products have been created successfully."

