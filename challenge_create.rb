require_relative 'ar.rb'

# Create three new products using different ways to create AR objects
# Method 1: Using new + save
product1 = Product.new(name: "Product 1", price: 15, stock_quantity: 10)
product1.save

# Method 2: Using create
product2 = Product.create(name: "Product 2", price: 20, stock_quantity: 8)

# Method 3: Using create!
product3 = Product.create!(name: "Product 3", price: 25, stock_quantity: 5)

# Attempt to create a product missing required columns
invalid_product = Product.new(name: "Invalid Product")
unless invalid_product.save
  puts "Errors while saving invalid product:"
  puts invalid_product.errors.full_messages
end
