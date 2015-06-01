class CreateCompanyLogicalTests < ActiveRecord::Migration
  def change
    create_table :company_logical_tests do |t|
	    t.belongs_to :company,index: true
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
