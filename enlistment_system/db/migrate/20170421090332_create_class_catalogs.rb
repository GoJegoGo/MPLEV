class CreateClassCatalogs < ActiveRecord::Migration[5.0]
  def change
    create_table :class_catalogs do |t|
      t.string :class_id
      t.string :venue_address
      t.time :time_start
      t.time :time_end
      t.date :date_inclusive
      t.string :subject_list

      t.timestamps
    end
  end
end
