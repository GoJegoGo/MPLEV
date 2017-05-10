class AddClassCatalogIdToAssessment < ActiveRecord::Migration[5.0]
  def change
    add_column :assessments, :class_catalog_id, :integer
  end
end
