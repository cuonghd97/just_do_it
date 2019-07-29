class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string  :name
      t.integer :stock
      t.integer :price
      t.string  :image
      t.text    :description
      t.references :category, foreign_key: true
      t.references :provider, foreign_key: true

      t.timestamps
    end
  end
end
