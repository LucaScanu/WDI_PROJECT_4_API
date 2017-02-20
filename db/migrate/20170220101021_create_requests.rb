class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.references :event, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
