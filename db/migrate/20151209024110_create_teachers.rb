class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :address
      t.string :sname
      t.string :saddress
      t.string :password
      t.integer  :student_id

      t.timestamps null: false
    end
  end
end
