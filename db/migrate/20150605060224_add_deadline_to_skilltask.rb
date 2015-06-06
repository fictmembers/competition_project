class AddDeadlineToSkilltask < ActiveRecord::Migration
  def change
  	add_column :skills_tasks, :deadline, :string
  end
end
