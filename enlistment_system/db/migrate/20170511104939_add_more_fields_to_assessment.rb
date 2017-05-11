class AddMoreFieldsToAssessment < ActiveRecord::Migration[5.0]
  def change
    add_column :assessments, :number_of_installments, :integer
    add_column :assessments, :final_amount, :integer
    add_column :assessments, :has_paid, :boolean
    add_column :assessments, :discount_rate, :integer
  end
end
