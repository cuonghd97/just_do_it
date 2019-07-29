class CreateInvoiceLinkToProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :invoice_link_to_products do |t|
      t.references :product, foreign_key: true
      t.references :invoice, foreign_key: true

      t.timestamps
    end
  end
end
