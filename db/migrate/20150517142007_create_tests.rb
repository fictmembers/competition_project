class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :question
      t.string :answer1
      t.string :answer2
      t.string :answer3
      t.string :answer4
      t.integer :right_answer

      t.timestamps
    end
  end
end
