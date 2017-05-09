class RemoveColumnToStudents < ActiveRecord::Migration[5.0]
  def change
    remove_column :students, :student_id, :integer
  end
end
