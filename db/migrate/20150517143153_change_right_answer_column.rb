class ChangeRightAnswerColumn < ActiveRecord::Migration
  def change
  	change_column :tests,:right_answer,:string
  end
end
