class AddDateStartClassCatalog < ActiveRecord::Migration[5.0]
  def change
    add_column :class_catalog, :date_start, :date
    add_column :class_catalog, :date_end, :date
  end
end
