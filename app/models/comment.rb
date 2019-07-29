class Comment < ApplicationRecord
  belong_to :products
  belong_to :user
end
