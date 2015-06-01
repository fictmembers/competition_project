class AddCompanyInformationToPromocode < ActiveRecord::Migration
  def change
  	add_column :promocodes, :company_id, :string
  end
end
