class ChangeCompanyIdFromStringToInteger < ActiveRecord::Migration
  def change
  	change_column :promocodes, :company_id, :integer
  end
end
