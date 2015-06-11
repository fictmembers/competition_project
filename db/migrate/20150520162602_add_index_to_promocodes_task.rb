class AddIndexToPromocodesTask < ActiveRecord::Migration
  def change
  	add_index :promocodes, :task, unique: true
  end
end
