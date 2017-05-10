class AddClassCatalogIdToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :class_catalog_id, :integer
  end
end
