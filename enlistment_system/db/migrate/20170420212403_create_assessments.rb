class CreateAssessments < ActiveRecord::Migration[5.0]
  def change
    create_table :assessments do |t|
      t.integer :assessment_id
      t.integer :student_id
      t.string :class_id
      t.string :package_id
      t.integer :payment_id
      t.integer :period_id
      t.text :announcement

      t.timestamps
    end
  end
end
