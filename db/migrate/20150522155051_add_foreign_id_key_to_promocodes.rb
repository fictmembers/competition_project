class AddForeignIdKeyToPromocodes < ActiveRecord::Migration
  def change
  	add_column :promocodes, :foreign_id, :integer
  	add_foreign_key(:promocodes, :users, column: 'foreign_id')
  end
end