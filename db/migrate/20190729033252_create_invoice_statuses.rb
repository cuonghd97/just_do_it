class CreateInvoiceStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :invoice_statuses do |t|
      t.text :status

      t.timestamps
    end
  end
end
