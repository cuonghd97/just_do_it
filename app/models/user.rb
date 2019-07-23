class User < ApplicationRecord
  has_many :comments
  has_many :ratings
  has_many :carts
  has_many :invoices
end
