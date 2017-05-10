class RemovePackageIdToAssessment < ActiveRecord::Migration[5.0]
  def change
    remove_column :assessments, :package_id, :string
  end
end
