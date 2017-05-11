class AddAssessmentIdToPayment < ActiveRecord::Migration[5.0]
  def change
    add_column :payments, :assessment_id, :integer
  end
end
