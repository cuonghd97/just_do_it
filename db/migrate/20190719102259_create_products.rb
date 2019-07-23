class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.references :category, foreign_key: true
      t.references :provider, foreign_key: true
      t.integer :stock
      t.integer :price
      t.string :image
      t.text :description

      t.timestamps
    end

  end
end
