require_relative 'ar.rb'

# Find any product from the database
product = Product.first

# Find the name of the category associated with the product
category_name = product.category.name
puts "Category associated with the product: #{category_name}"

# Find a specific category and use it to build and persist a new product associated with this category
category = Category.find_by(name: "Electronics")
if category
  new_product = category.products.build(name: "New Electronics Product", price: 100, stock_quantity: 20)
  new_product.save
  puts "New product associated with category '#{category.name}' has been created."
else
  puts "Category not found."
end

# Find a specific category and then use it to locate all the associated products over a certain price
category = Category.find_by(name: "Books")
if category
  products_over_price = category.products.where("price > 50")
  puts "Products in category '#{category.name}' with price over $50:"
  products_over_price.each do |product|
    puts "#{product.name}: $#{product.price}"
  end
else
  puts "Category not found."
end

