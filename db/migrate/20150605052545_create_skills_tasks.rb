class CreateSkillsTasks < ActiveRecord::Migration
  def change
    create_table :skills_tasks do |t|	
    t.text :task
	t.timestamps
    end
  end
end
