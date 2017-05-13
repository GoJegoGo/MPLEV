class RemoveClassCatalogIdToStudent < ActiveRecord::Migration[5.0]
  def change
    remove_column :students, :class_catalog_id, :integer
  end
end
