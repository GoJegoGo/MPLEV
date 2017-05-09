class AddPackageIdToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :package_id, :integer
  end
end
