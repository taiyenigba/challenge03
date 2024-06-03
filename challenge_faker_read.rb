# challenge_faker_read.rb

require_relative 'ar.rb'

# Fetch all categories from the database
categories = Category.all

# Display the categories and their products
categories.each do |category|
  puts "Category: #{category.name}"
  puts "Description: #{category.description}"
  puts "Products:"

  category.products.each do |product|
    puts "  - Name: #{product.name}, Price: $#{product.price}"
  end

  puts "\n"
end

