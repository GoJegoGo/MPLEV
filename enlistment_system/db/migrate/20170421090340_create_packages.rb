class CreatePackages < ActiveRecord::Migration[5.0]
  def change
    create_table :packages do |t|
      t.string :package_id
      t.string :name
      t.string :package_type
      t.decimal :initial_price

      t.timestamps
    end
  end
end
