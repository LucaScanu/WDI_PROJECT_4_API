class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.references :user, foreign_key: true
      t.text :body
      t.string :category

      t.timestamps
    end
  end
end
