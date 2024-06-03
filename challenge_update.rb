require_relative 'ar.rb'

# Find all products with a stock quantity greater than 40
products_greater_than_40 = Product.where("stock_quantity > 40")

# Add one to the stock quantity of each product and save changes
products_greater_than_40.each do |product|
  product.stock_quantity += 1
  product.save
end
