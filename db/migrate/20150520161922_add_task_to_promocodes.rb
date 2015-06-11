class AddTaskToPromocodes < ActiveRecord::Migration
  def change
    add_column :promocodes, :task, :string
  end
end
