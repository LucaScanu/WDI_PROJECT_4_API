class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.text :image
      t.string :first_name
      t.string :last_name
      t.string :role, default: 'guest'
      t.text :description

      t.timestamps
    end
  end
end
