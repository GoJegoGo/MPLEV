class RemoveDateInclusiveToClassCatalog < ActiveRecord::Migration[5.0]
  def change
    remove_column :class_catalogs, :date_inclusive, :date
  end
end
