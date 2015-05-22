class CreatePromocodes < ActiveRecord::Migration
  def change
    create_table :promocodes do |t|
      t.string :text
      t.string :recipient

      t.timestamps
    end
  end
end
