class RemoveColumnToPackages < ActiveRecord::Migration[5.0]
  def change
    remove_column :packages, :package_id, :string
  end
end
