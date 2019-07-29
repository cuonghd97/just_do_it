class Relationship < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :products, index: true, foreign_key: true
    add_reference :comments, :users, index: true, foreign_key: true

    add_reference :ratings, :products, index: true, foreign_key: true
    add_reference :ratings, :users, index: true, foreign_key: true

    add_reference :carts, :products, index: true, foreign_key: true
    add_reference :carts, :users, index: true, foreign_key: true

    add_reference :invoices, :users, index: true, foreign_key: true

    add_reference :invoices, :invoice_status, index: true, foreign_key: true
  end
end
