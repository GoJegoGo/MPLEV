class AddMoreFieldsToClassCatalogs < ActiveRecord::Migration[5.0]
  def change
    add_column :class_catalogs, :max_slots, :integer
    add_column :class_catalogs, :slots_taken, :integer
  end
end
