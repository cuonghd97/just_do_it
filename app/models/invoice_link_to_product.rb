class InvoiceLinkToProduct < ApplicationRecord
  belong_to :invoice
  belong_to :product
end
