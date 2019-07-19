class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.string :fullname
      t.string :address
      t.string :phone
      t.string :gender
      t.string :birthday

      t.timestamps
    end
  end
end
