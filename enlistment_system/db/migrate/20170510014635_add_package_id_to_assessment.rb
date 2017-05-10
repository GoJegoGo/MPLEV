class AddPackageIdToAssessment < ActiveRecord::Migration[5.0]
  def change
    add_column :assessments, :package_id, :integer
  end
end
