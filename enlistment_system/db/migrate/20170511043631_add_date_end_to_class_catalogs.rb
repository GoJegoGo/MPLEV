class AddDateEndToClassCatalogs < ActiveRecord::Migration[5.0]
  def change
    add_column :class_catalogs, :date_end, :date
  end
end
