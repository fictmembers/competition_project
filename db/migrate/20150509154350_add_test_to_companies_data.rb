class AddTestToCompaniesData < ActiveRecord::Migration
  def change
  	add_index :companies, :email, unique: true
  end
end
