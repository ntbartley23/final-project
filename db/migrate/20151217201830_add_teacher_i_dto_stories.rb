class AddTeacherIDtoStories < ActiveRecord::Migration
  def change
  	add_column :stories, :teacher_id, :integer
  end
end
