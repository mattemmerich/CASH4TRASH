class Changingdateintransactiontable < ActiveRecord::Migration
  def change
  	add_column :transaction_items, :fulldate, :date
  	
  	remove_column :transaction_items, :date
  end


end
