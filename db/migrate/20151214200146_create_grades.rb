class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.integer :score
      t.integer :student_id
      t.integer :story_id
      t.integer :average
      t.timestamps null: false
    end
  end
end
