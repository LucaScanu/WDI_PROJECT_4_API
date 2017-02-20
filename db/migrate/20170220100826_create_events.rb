class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.date :date
      t.string :name
      t.text :description
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.integer :maximum_guests
      t.integer :available_spaces
      t.text :house_rules
      t.string :location
      t.float :latitude
      t.float :longitude
      t.integer :price_per_head

      t.timestamps
    end
  end
end
