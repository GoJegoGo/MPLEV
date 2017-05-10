class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.string :number_of_installment
      t.boolean :has_paid
      t.integer :discount_rate
      t.decimal :final_amount

      t.timestamps
    end
  end
end
