class CreateInternalsTests < ActiveRecord::Migration
  def change
    create_table :internals_tests do |t|
      t.string :question

      t.timestamps
    end
  end
end
