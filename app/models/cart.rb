class Cart < ApplicationRecord
  belong_to :product
  belong_to :user
end
