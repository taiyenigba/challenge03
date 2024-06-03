require_relative 'ar.rb'

# Find and delete one of the products created in challenge_create.rb
product_to_delete = Product.find_by(name: "Product 1")
if product_to_delete
  product_to_delete.destroy
  puts "Product '#{product_to_delete.name}' has been deleted."
else
  puts "Product not found."
end
