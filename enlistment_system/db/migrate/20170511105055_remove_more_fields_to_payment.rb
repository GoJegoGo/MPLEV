class RemoveMoreFieldsToPayment < ActiveRecord::Migration[5.0]
  def change
    remove_column :payments, :number_of_installment, :string
    remove_column :payments, :has_paid, :boolean
    remove_column :payments, :discount_rate, :integer
    remove_column :payments, :final_amount, :decimal
  end
end
