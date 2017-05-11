class RemovePaymentIdToAssessment < ActiveRecord::Migration[5.0]
  def change
    remove_column :assessments, :payment_id, :integer
  end
end
