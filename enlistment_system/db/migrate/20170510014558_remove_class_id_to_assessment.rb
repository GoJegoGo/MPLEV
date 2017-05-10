class RemoveClassIdToAssessment < ActiveRecord::Migration[5.0]
  def change
    remove_column :assessments, :class_id, :string
  end
end
