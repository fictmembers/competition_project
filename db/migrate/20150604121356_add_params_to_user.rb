class AddParamsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :birthday, :integer
  	add_column :users, :year_of_education, :integer
  	add_column :users, :speciality, :string
  end
end
