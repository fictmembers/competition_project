class AddColumnToPromocodesCompanySender < ActiveRecord::Migration
  def change
  	remove_column :promocodes, :company_id
  	add_column :promocodes, :company_sender, :string
  	add_column :promocodes, :company_id, :integer
  end
end
