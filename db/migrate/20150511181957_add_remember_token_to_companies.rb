class AddRememberTokenToCompanies < ActiveRecord::Migration
  def change
  	add_column :companies,:remember_token,:string
  	add_index :companies,:remember_token
  end
end
