class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, unique: true
      t.string :password_digest
      t.string :nickname
      t.string :address
      t.string :phone_number, unique: true
      t.date :birthday
      t.string :age
      t.integer :gender, null: false, default: 0
      t.text :content
      t.text :image
      t.text :clothes_icon
      t.boolean :adviser, null: false, default: false
      t.boolean :hide_gender, null: false, default: false
      
      t.timestamps
    end
  end
end
