class RemoveClassIdToClassCatalog < ActiveRecord::Migration[5.0]
  def change
    remove_column :class_catalogs, :class_id, :string
  end
end
