class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.integer :student_id
      t.string :name
      t.string :email_ad
      t.string :high_school
      t.datetime :birthdate
      t.integer :age
      t.string :contact_number
      t.string :father_name
      t.string :mother_name

      t.timestamps
    end
  end
end
