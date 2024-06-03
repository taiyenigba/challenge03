# models/product.rb

class Product < ActiveRecord::Base
  # This AR object is linked with the products table.
  
  # A product has a many to one relationship with a category.
  # The products table has a category_id foreign key.
  # In other words, a product belongs to a category.
  belongs_to :category

  # Validation to ensure all required columns are filled out before saving to the database
  validates :name, :price, :stock_quantity, presence: true

  # Validation to ensure product names are unique and longer than 3 characters
  validates :name, uniqueness: true, length: { minimum: 4 }
end
