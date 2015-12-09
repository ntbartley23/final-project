class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :fname
      t.string :lname
      t.date :birthdate
      t.integer :teacher_id
      t.integer :grade

      t.timestamps null: false
    end
  end
end
