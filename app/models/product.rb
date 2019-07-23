class Product < ApplicationRecord
  belong_to :category
  belong_to :provider
  has_many :comments
  has_many :invoice_link_to_products
  has_many :carts
  has_many :ratings
end
