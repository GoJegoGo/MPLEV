class CreateClassLists < ActiveRecord::Migration[5.0]
  def change
    create_table :class_lists do |t|
      t.string :class_id
      t.integer :student_id
      t.integer :period_id
      t.string :professor_note

      t.timestamps
    end
  end
end
