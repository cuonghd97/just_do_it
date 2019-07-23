class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.string :fullname
      t.text :address
      t.string :phone
      t.string :gender
      t.date :birthday

      t.timestamps
    end
  end
end
