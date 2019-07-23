class CreateInvoiceStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :invoice_statuses do |t|
      t.string :status

      t.timestamps
    end
  end
end
