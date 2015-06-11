class ChangingColumnOfMailedBack < ActiveRecord::Migration
  def change
  	change_column :promocodes, :mailed_to, :string
  end
end
