class ChangingColumnOfMailedTo < ActiveRecord::Migration
  def change
  	change_column :promocodes, :mailed_to, :integer
  end
end
