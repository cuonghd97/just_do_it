class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :password_digest
      t.string :email
      t.string :fullname
      t.text   :address
      t.string :phone
      t.string :gender
      t.date   :birthday

      t.timestamps
    end
  end
end
