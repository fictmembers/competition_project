class DeleteColumnMailedTo < ActiveRecord::Migration
  def change
  	remove_column :promocodes, :mailed_to
  end
end
