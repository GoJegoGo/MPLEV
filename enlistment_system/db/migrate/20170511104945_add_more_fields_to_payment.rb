class AddMoreFieldsToPayment < ActiveRecord::Migration[5.0]
  def change
    add_column :payments, :amount_paid, :integer
  end
end
