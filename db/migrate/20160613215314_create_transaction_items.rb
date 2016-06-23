class CreateTransactionItems < ActiveRecord::Migration
  def change
    create_table :transaction_items do |t|
      t.string :metal_type
      t.float :weight
      t.float :cash
      t.integer :user_id
      t.string :location
      t.string :date

      t.timestamps null: false
    end
  end
end
