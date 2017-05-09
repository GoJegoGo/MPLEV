class AddMoreFieldsToStudents < ActiveRecord::Migration[5.0]
  def change
    remove_column :students, :birthdate
    add_column :students, :birthdate, :date
  end
end
