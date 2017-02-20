class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.text :bio
      t.text :image
      t.string :password_digest
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
