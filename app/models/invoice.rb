class Invoice < ApplicationRecord
  belong_to :user
  belong_to :invoice_status
  has_may :invoice_link_to_products
end
