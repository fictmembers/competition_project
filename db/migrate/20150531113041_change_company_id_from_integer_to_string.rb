class ChangeCompanyIdFromIntegerToString < ActiveRecord::Migration
  def change
  	change_column :promocodes, :company_id, :string
  end
end
