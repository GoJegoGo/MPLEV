class RemovePackageIdToStudent < ActiveRecord::Migration[5.0]
  def change
    remove_column :students, :package_id, :integer
  end
end
