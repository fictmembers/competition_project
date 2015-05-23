class AddForeignIdKeyToPromocodes < ActiveRecord::Migration
  def change
  	add_column :promocodes, :mailed_to, :string
  end
end