class CreateLogicalTests < ActiveRecord::Migration
  def change
    create_table :logical_tests do |t|
      t.string :question
      t.string :answer1
      t.string :answer2
      t.string :answer3
      t.string :answer4
      t.string :right_answer
      t.timestamps
    end
  end
end
