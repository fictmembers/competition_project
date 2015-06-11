class AddColumsToUser < ActiveRecord::Migration
  def change
  	remove_column :users,:speciality,:string
  	remove_column :users,:birthday,:string
  	remove_column :users,:year_of_education,:integer
  	add_column :users,:speciality,:string
  	add_column :users,:birthday,:string
  	add_column :users,:year_of_education,:integer
  end
end
