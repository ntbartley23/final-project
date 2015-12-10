class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.integer :numword
      t.time :start_time
      t.time :end_time
      t.string :book_title
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
